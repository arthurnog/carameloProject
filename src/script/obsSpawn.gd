extends Node

const obs0 = preload("res://src/scene/obs0.tscn")
const obs1 = preload("res://src/scene/obs1.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_TimerO_timeout():
	spawn()
	pass # Replace with function body.
	

func _on_GAME_START():
	$TimerO.start()
	pass # Replace with function body.

func spawn():
	var obs
	randomize()
	if randi()%2:
		obs = obs1.instance()
	else:
		obs = obs0.instance()
	call_deferred("add_child", obs)
