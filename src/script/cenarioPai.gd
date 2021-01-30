extends Node2D

#Esse nó foi criado para conectar o sinal gerado pelo dogMal

func _on_dogMal_cool():
	$AnimatedSprite.normal()
	$AnimatedSprite2.normal()
	$AnimatedSprite3.normal()
	pass # Replace with function body.


func _on_dogMal_fear():
	$AnimatedSprite.fast()
	$AnimatedSprite2.fast()
	$AnimatedSprite3.fast()
	pass # Replace with function body.


func _on_GAME_START():
	$AnimatedSprite.normal()
	$AnimatedSprite2.normal()
	$AnimatedSprite3.normal()
	pass # Replace with function body.
