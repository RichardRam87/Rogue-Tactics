class_name BattleController
extends Node

@export var action_menu: BattleActionMenu

#TODO: refactor_battle_units in a seperate class
var _battle_units: Array[BattleUnit]
var _turn_index := 0


func _ready():
	# start / setup
	_battle_units.assign(find_children("*", "BattleUnit"))
	action_menu.action_selected.connect(on_action_selected)
	
	# set turn order
	_calculate_turn_order()
	
	#start first turn
	_battle_units[_turn_index].start_turn()


# func _input(_event):
	# if Input.is_key_pressed(KEY_ENTER):
	#	next_turn()


func _calculate_turn_order() -> void:
	# TODO: shuffle/sort _battle_units based on a stat
	_turn_index = 0


func next_turn() -> void:
	_battle_units[_turn_index].end_turn()
	_turn_index = (_turn_index + 1) % _battle_units.size()
	_battle_units[_turn_index].start_turn()
	

#TODO: replace action string with class/resource -- BattleActionMenu
func on_action_selected(action: String) -> void:
	print(action)
	match action:
		"Move": pass
		"Abilities": pass
		"Wait": 
			next_turn()
		
	
