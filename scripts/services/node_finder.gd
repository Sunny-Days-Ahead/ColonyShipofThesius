extends Node

var _game: Game

func get_game_root() -> Game:
	if is_instance_valid(_game):
		return(_game)

	_game = get_tree().get_first_node_in_group("game")

	return(_game)