extends Node2D

signal START

func _ready():
	pass # Replace with function body.

func _input(event):
	if Input.is_action_just_pressed("click"):
		emit_signal("START")
		set_process_input(false)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
