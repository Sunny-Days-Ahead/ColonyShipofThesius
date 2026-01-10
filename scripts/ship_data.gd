class_name ShipData
extends Resource

@export var sensors: int
@export var shields: int
@export var weapons: int
@export var refinery: int
@export var navigation: int
@export var science: int

func _init() -> void:
	sensors = 0
	shields = 0
	weapons = 0
	refinery = 0
	navigation = 0
	science = 0