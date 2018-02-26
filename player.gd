extends KinematicBody2D

const MOTION_SPEED = 9999 # This speed ensure that the tile always hit the wall

func _physics_process(delta):
	global.positions[convert_to_index(position)] = 0
	
	var motion = Vector2()
	
	if Input.is_action_pressed("ui_up"):
		motion = Vector2(0, -1)
	if Input.is_action_pressed("ui_down"):
		motion = Vector2(0, 1)
	if Input.is_action_pressed("ui_left"):
		motion = Vector2(-1, 0)
	if Input.is_action_pressed("ui_right"):
		motion = Vector2(1, 0)
	
	motion = motion * MOTION_SPEED
	move_and_slide(motion, Vector2(0, 0), 1, 1)
	global.positions[convert_to_index(position)] = 1
	
func convert_to_index(position):
	var x = int((position.x - 25) / 50 - 1)
	var y = int((position.y - 25) / 50 - 1)
	return x * 4 + y