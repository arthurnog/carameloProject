extends KinematicBody2D


export (int) var  vel = -160


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	position.x = vel*delta
#	pass
