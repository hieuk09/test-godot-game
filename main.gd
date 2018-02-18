extends Node

# class member variables go here, for example:
# var array = []

func _draw():
	var vector = Vector2(0, 0);
	var c = Color(0.2, 1.0, .7, .8)
	draw_circle(vector, 10, c);
