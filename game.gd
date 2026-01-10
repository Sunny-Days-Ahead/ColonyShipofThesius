class_name Game
extends Node

var ship: Ship

var break_events: Array[Event] = []
var resource_events: Array[Event] = []
var route_events: Array[Event] = []

func _ready() -> void:
	ship = Ship.new_ship()

	break_events = _array_from_folder(Constants.BREAK_EVENT_FOLDER)
	resource_events = _array_from_folder(Constants.RESOURCE_EVENT_FOLDER)
	route_events = _array_from_folder(Constants.ROUTE_EVENT_FOLDER)

func _array_from_folder(folder: String) -> Array[Event]:
	var array: Array[Event] = []

	for file in ResourceLoader.list_directory(folder):
		if not file.ends_with(".tres"):
			continue

		var filepath: String = folder + file
		array.append(ResourceLoader.load(filepath))

	return(array)