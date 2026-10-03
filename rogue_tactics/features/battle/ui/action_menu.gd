class_name BattleActionMenu
extends PanelContainer

@export var move_button: Button
@export var abilities_button: Button
@export var wait_button: Button

#TODO: Replace string, with custom action class (resource)
signal action_selected(action: String)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	move_button.pressed.connect(action_selected.emit.bind("Move"))
	abilities_button.pressed.connect(action_selected.emit.bind("Abilities"))
	wait_button.pressed.connect(action_selected.emit.bind("Wait"))
	
	move_button.grab_focus()
