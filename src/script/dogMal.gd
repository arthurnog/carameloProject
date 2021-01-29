extends Node2D


signal fear
signal cool

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var tempo = rand_range(10,20)
	$Timer0.wait_time = tempo
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_VisibilityNotifier2D_screen_entered():
	#dog com medo -> corre mais rápido
	#timer1 -> GO
	$Timer1.start()
	#set timer0
	randomize()
	var tempo = rand_range(10,20)
	$Timer0.wait_time = tempo
	pass # Replace with function body.

func _on_VisibilityNotifier2D_screen_exited():
	#dog de boa -> velocidade normal
	#timer0 -> GO
	$Timer0.start()
	#emmit signal cool
	emit_signal("cool")
	pass # Replace with function body.

func _on_Timer1_timeout():
	#sai da tela
	$Tween.interpolate_property(self, "position:x", position.x, position.x-500, 2, Tween.TRANS_EXPO, Tween.EASE_OUT)
	$Tween.start()
	pass # Replace with function body.

func _on_Timer0_timeout():
	#entra na tela
	#emmit signal fear
	emit_signal("fear")
	$Tween.interpolate_property(self, "position:x", position.x, position.x+500, 2, Tween.TRANS_EXPO, Tween.EASE_IN)
	$Tween.start()
	pass # Replace with function body.


func _on_GAME_START():
	$Timer0.start()
	pass # Replace with function body.
