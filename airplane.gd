extends RigidBody3D

var thrust=true
@onready var button:Button=$/root/main/ui/Button
func _integrate_forces(_state: PhysicsDirectBodyState3D) -> void:
	if thrust:
		apply_central_force(-basis.z * 50)
	
func _physics_process(_delta: float) -> void:
	#$camMount.global_position=global_position
	var dir=Input.get_axis("ui_right","ui_left")
	apply_torque(basis.z * dir)
	dir= Input.get_axis("roll_right","roll_left")
	apply_torque(basis.y * dir * 20)
	dir= Input.get_axis("ui_up","ui_down")
	apply_torque(basis.x * dir * 20)


func _on_button_pressed() -> void:
	thrust=!thrust
	if(thrust):
		gravity_scale=0
		button.add_theme_color_override("font_color",Color("green"))
		button.text="on"
		#theme_override_colors/font_color
	else:
		gravity_scale=1
		button.add_theme_color_override("font_color",Color("red"))
		button.text="off"
	
