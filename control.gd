extends TileMap

func _ready():
	pass

func _input(event):
	var positions = global.positions
	
	if event.is_action_released("ui_accept"):
		var empty_positions = []
		var i = 0
		
		while i < positions.size():
			if positions[i] == 0:
				empty_positions.append(i)
			i += 1
			
		var new_position = 0
		var random = randi()
		
		if empty_positions.empty():
			pass
		else:
			new_position = empty_positions[random % empty_positions.size()]
			
		var node = get_tree().get_root().get_node('world/score_field')
		var x = 50 * (new_position / 4 + 1) + 25
		var y = 50 * (new_position % 4 + 1) + 25
		positions[new_position] = 1
		
		var bullet = preload("res://cursor.tscn").instance()
		bullet.position = Vector2(x, y)
		get_parent().add_child(bullet)
