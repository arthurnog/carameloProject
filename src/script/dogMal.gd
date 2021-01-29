extends Node2D


signal fear
signal cool

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_VisibilityNotifier2D_screen_entered():
	#dog com medo -> corre mais rápido
	#timer1 -> GO
	#set timer0
	#randomize()
	#set timer -> (((randi()%5) +1)/5)*20
	pass # Replace with function body.

func _on_VisibilityNotifier2D_screen_exited():
	#dog de boa -> velocidade normal
	#timer0 -> GO
	pass # Replace with function body.

func _on_Timer1_timeout():
	#sai da tela
	pass # Replace with function body.

func _on_Timer0_timeout():
	#entra na tela
	pass # Replace with function body.
