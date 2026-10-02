extends Node3D

# For now quick and dirty exiting of application
# TODO: fix controller input
func _input(event):
	if Input.is_key_pressed(KEY_ESCAPE):
		exit_application()

func exit_application() -> void:
	get_tree().quit()
