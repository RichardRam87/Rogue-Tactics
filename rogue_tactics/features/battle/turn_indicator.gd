class_name TurnIndicator
extends Node3D

@export var sprite: Sprite3D


func _ready() -> void:
	set_indicator(false)
	

func set_indicator(state: bool) -> void:
	visible = state
