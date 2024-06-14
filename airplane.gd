extends RigidBody3D

func _integrate_forces(state: PhysicsDirectBodyState3D) -> void:
	apply_central_force(-basis.z * 30)
	
func _physics_process(_delta: float) -> void:
	var dir=Input.get_axis("ui_right","ui_left")
	apply_torque(basis.y * dir * 20)
	dir= Input.get_axis("ui_up","ui_down")
	apply_torque(basis.x * dir * 20)
