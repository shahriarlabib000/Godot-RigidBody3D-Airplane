extends Node3D


func _physics_process(_delta: float) -> void:
	$Camera3D.look_at($Airplane.position)
	$Camera3D.fov= clamp(75 -($Camera3D.position.distance_to($Airplane.position)/5),5,179)


func _on_button_2_pressed() -> void:
	$Camera3D.current=!$Camera3D.current
	
