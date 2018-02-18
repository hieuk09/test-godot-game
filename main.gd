extends Node

# class member variables go here, for example:
# var array = []

const MAX_SIZE = 10

func _draw():
	var scale = 2
	var i = 0
	var size = Vector2(scale, scale)
	var color = Color(1, 1, 0, 0.5)
	while i < MAX_SIZE:
		i += 1
		var j = 0
		while j < MAX_SIZE:
			j += 1
			var start = Vector2(i * scale, j * scale)

			var rect = Rect2(start, size)
			draw_rect(rect, color, false)
