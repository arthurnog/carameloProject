extends Node

#Esse nó cria os itens dentro do jogo da um tempo

const item = preload("res://src/scene/item.tscn")

func _ready():
	pass # Replace with function body.

func _on_TimerI_timeout():
	spawn()
	pass # Replace with function body.
	

func _on_GAME_START():
	$TimerI.start()
	pass # Replace with function body.

func spawn():
	call_deferred("add_child", item.instance())


