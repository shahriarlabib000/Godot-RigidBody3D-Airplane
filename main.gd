extends Node3D
var point=preload("res://point.tscn")

func _on_timer_timeout() -> void:
	var inst=point.instantiate()
	inst.position=$Airplane.position
	add_child(inst)

func _physics_process(_delta: float) -> void:
	$Camera3D.look_at($Airplane.position)
	$Camera3D.fov= clamp(75 -($Camera3D.position.distance_to($Airplane.position)/5),5,179)
		


func _on_button_2_pressed() -> void:
	$Camera3D.current=!$Camera3D.current
	
