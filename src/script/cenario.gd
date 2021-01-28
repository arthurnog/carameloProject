extends AnimatedSprite

export (int) var vel = -160


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_VisibilityNotifier2D_screen_exited():
	position.x = 424*4.7

func _process(delta):
	position.x += vel*delta
