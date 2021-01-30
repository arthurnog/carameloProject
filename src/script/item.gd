extends KinematicBody2D

onready var startY = position.y
export (int) var velx = -180
export (int) var vely = 40

func _ready():
	randomize()
	var i = randi()%4
	$AnimatedSprite.frame = i

func _physics_process(delta):
	#Item sem move em um movimento oscilatório
	if position.y > startY+30 or position.y<startY-30:
		vely = -vely
	move_and_slide(Vector2(velx,vely))



func _on_VisibilityNotifier2D_screen_exited():
	#quando objetos como esse saem da tela eles devem ser eliminados para não
	#ocupar espaço de memória
	queue_free()
	


