extends Node2D

export (int) var life = 3
var itens = 0

var Vitor = false

func _ready():
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	if is_in_group("obstacle"):
		life += -1
	elif is_in_group("item"):
		itens += 1


func _physics_process(delta):
	if Input.is_action_just_pressed("click"):
		yield(get_tree().create_timer(.1), "timeout")
		if Input.is_action_pressed("click"):
			$Area2D2/CollisionShape2D2.disabled = false
			$Area2D/CollisionShape2D.disabled = true
			#animação agachar
		
		else:
			if not Vitor:
				$Tween.interpolate_property(self, "position:y", position.y, position.y-100, 2, Tween.TRANS_EXPO, Tween.EASE_OUT)
				$Tween.start()
				Vitor = true
			pass
	elif Input.is_action_just_released("click"):
		if $Area2D2/CollisionShape2D2.disabled == false:
			$Area2D2/CollisionShape2D2.disabled = true
			$Area2D/CollisionShape2D.disabled = false
		

func _on_dogMal_cool():
	#ativa o twen e o dog volta pra posição original
	#animação dog de boa
	$Tween.interpolate_property(self, "position:x", position.x, position.x-200, 2, Tween.TRANS_EXPO, Tween.EASE_IN)
	$Tween.start()
	pass # Replace with function body.


func _on_dogMal_fear():
	#doguinho vai para frente com medo (animação medo)
	$Tween.interpolate_property(self, "position:x", position.x, position.x+200, 2, Tween.TRANS_EXPO, Tween.EASE_IN)
	$Tween.start()
	pass # Replace with function body.


func _on_GAME_START():
	#animação correndo
	pass # Replace with function body.


func _on_Tween_tween_completed(object, key):
	if object == self and key == ":position:y":
		if Vitor:
			$Tween.interpolate_property(self, "position:y", position.y, position.y+100, 2, Tween.TRANS_EXPO, Tween.EASE_IN)
			$Tween.start()
			yield($Tween,"tween_completed")
			Vitor = false
	pass # Replace with function body.
