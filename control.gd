extends TileMap

func _ready():
	var positions = global.positions
	var index = 0
	
	for position in positions:
		var x = index % 4 + 1 + 1
		var y = index / 4 + 1 + 1
		
		if position != 0:
			set_cell(x, y, 0)
		
		index += 1


func _input(event):
	var positions = global.positions
	
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	var up = Input.is_action_pressed("ui_up")
	var down = Input.is_action_pressed("ui_down")

	if left:
		pass
	else:
		if right:
			pass
		else:
			if up:
				pass
			else:
				if down:
					pass