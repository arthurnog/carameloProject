extends KinematicBody2D

onready var startY = position.y
export (int) var velx = -160
export (int) var vely = 20

func _ready():
	pass # Replace with function body.

func _process(delta):
	position.x += velx*delta
	if position.y > startY+10:
		position.y += -vely*delta
	elif position.y < startY-10:
		position.y += vely*delta
		

