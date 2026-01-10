extends VBoxContainer

@export_category("Controls")
@export var prompt_textbox: Label
@export var button_container: VBoxContainer

var game: Game
var current_event: Event
var ship: Ship

func _ready() -> void:
	await Engine.get_main_loop().process_frame
	game = NodeFinder.get_game_root()
	ship = game.ship

	current_event = game.break_events.pick_random()

	prompt_textbox.text = current_event.prompt
	for option in current_event.options:
		var new_button = Button.new()
		new_button.text = option.text
		new_button.connect("pressed", _on_option_selected.bind(option))
		button_container.add_child(new_button)

func _on_option_selected(option: EventOption) -> void:
	print(option.text)
