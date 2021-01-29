extends KinematicBody2D

onready var startY = position.y
export (int) var velx = -160
export (int) var vely = 20

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if position.y > startY+20 or position.y<startY-20:
		vely = -vely
	move_and_slide(Vector2(velx,vely))



func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.


