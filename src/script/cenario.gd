extends AnimatedSprite

export (int) var vel = 0
#o cenário fica parado no começo e começa a se mover no começo do jogo


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_VisibilityNotifier2D_screen_exited():
	#o cenário é composto de 3 imagens que se repetem e quando uma imagem sai
	#do palco ela volta pro começo
	position.x = 424*4.7

func _process(delta):
	position.x += vel*delta
	#no jogo o cenário se move para dar impressão de movimento do player

func fast():
	vel = vel*1.5
	#quando o dog do mal entra no palco o cenário anda mais

func normal():
	vel = -180
	#quando o dog do mal sai do palco o cenário volta a velocidade original
