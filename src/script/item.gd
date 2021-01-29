extends KinematicBody2D

onready var startY = position.y
export (int) var velx = -160
export (int) var vely = 20

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if position.y > startY+10 or position.y<startY-10:
		vely = -vely
	move_and_slide(Vector2(velx,vely))

