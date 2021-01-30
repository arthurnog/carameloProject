extends Node2D

signal START

func _ready():
	pass # Replace with function body.

func _input(event):
	if Input.is_action_just_pressed("click"):
		emit_signal("START")
		set_process_input(false)
		$Sprite.visible = false
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_dog_dead():
	#GAME OVER
	#cena de derrota
	get_tree().change_scene("res://src/scene/lost.tscn")
	pass # Replace with function body.


func _on_dog_win():
	#WIN
	#aqui a cena muda para a cena de vitória
	get_tree().change_scene("res://src/scene/win.tscn")
	queue_free()
	pass # Replace with function body.
