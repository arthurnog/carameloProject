extends KinematicBody2D


export (int) var  vel = -160


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	move_and_slide(Vector2(vel,0))
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.
