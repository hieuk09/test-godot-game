extends Node


const SIZE = 16

var positions = [
  0, 0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0, 0,
  0, 0, 0, 0
]

func _ready():
	var x = randi() % 4
	var y = randi() % 4
	positions[x * 4 + y] = 1