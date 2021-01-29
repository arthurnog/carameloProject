extends Node2D

export (int) var life = 3
var itens = 0

func _ready():
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	if is_in_group("obstacle"):
		life += -1
	elif is_in_group("item"):
		itens += 1


