extends KinematicBody2D

#os obstaculos se movem junto com o cenário então por isso
#devem ter a mesma velocidade

export (int) var  vel = -160

func _ready():
	randomize()
	var i = randi()%4
	$Sprite.frame = i

func _process(delta):
	move_and_slide(Vector2(vel,0))


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	#quando o obstaculo sai da tela ele perde a utilidade e é eliminado

func fast():
	vel = -160*1.5
	
func normal():
	vel = -160
