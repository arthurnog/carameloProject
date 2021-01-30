extends Node

const obs0 = preload("res://src/scene/obs0.tscn")
const obs1 = preload("res://src/scene/obs1.tscn")
var flag = false

func _on_TimerO_timeout():
	spawn()
	
func _on_GAME_START():
	$TimerO.start()

func spawn():
	#os obstaculos são criados de maneira aleatória
	var obs
	obs = obs0.instance()
	if flag:
		obs.fast()
	else:
		obs.normal()
	call_deferred("add_child", obs)


func _on_dogMal_fear():
	flag = true

func _on_dogMal_cool():
	flag = false

