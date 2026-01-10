extends Node

var ship: ShipData

func _ready() -> void:
	ship = ShipData.new()
	ship.sensors = 2
	ship.shields = 2
	ship.weapons = 2
	ship.refinery = 2
	ship.navigation = 2
	ship.science = 2