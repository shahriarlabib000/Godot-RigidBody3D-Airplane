extends Node3D
func _physics_process(delta: float) -> void:
	$Camera3D.global_rotation.z=0

#func _unhandled_input(event: InputEvent) -> void:
	#if event is InputEventScreenDrag:
		#rotation.x += event.relative.y * 0.01
		#rotation.y -= event.relative.x * 0.01
