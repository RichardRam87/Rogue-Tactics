class_name BattleUnit
extends Node3D

@export var turn_indicator: TurnIndicator


func start_turn() -> void:
	turn_indicator.set_indicator(true)


func end_turn() -> void:
	turn_indicator.set_indicator(false)
