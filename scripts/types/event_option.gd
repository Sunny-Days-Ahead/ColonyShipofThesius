class_name EventOption
extends Resource

@export var text: String

@export_category("FX")
@export var sfx: StringName = &""
@export var screen_shake: bool = false

@export_category("Choice Info")
@export var requirements: ShipData
@export var effect: ShipData