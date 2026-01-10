extends Node

@export_category("Controls")
@export var prompt_textbox: Label
@export var button_container: VBoxContainer

@export_category("Event Data")
@export var event_table : Array[Event]
var current_event : Event

func _ready() -> void:
	current_event = event_table.pick_random()

	prompt_textbox.text = current_event.prompt
	for option in current_event.option_text:
		var newbutton = Button.new()
		newbutton.text = option.text
		button_container.add_child(newbutton)
