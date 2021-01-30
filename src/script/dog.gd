extends Node2D

signal dead
signal catch
signal win

export (int) var life = 3
var itens = 0

var jump = false #variavel que diz se o dog pula ou não
onready var startY = position.y #valor inicial de y do dog


func _ready():
	$AnimatedSprite.play("idle")
	pass # Replace with function body.


# warning-ignore:unused_argument
func _process(delta):
	if life == 0:
		emit_signal("dead")
	elif itens == 6:
		emit_signal("win")


# warning-ignore:unused_argument
func _physics_process(delta):
	if Input.is_action_just_pressed("click"):
		yield(get_tree().create_timer(.2), "timeout")
		if Input.is_action_pressed("click"):
			$Area2D2/CollisionShape2D2.disabled = false
			$Area2D/CollisionShape2D.disabled = true
			#animação agachar
		
		else:
			if not jump:
				$Tween.interpolate_property(self, "position:y", position.y, position.y-100, .7, Tween.TRANS_EXPO, Tween.EASE_OUT)
				$Tween.start()
				jump = true
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
	$AnimatedSprite.play("run")
	pass # Replace with function body.


func _on_dogMal_fear():
	#doguinho vai para frente com medo (animação medo)
	$Tween.interpolate_property(self, "position:x", position.x, position.x+200, 1, Tween.TRANS_EXPO, Tween.EASE_IN)
	$Tween.start()
	$AnimatedSprite.play("fear")
	pass # Replace with function body.


func _on_GAME_START():
	$AnimatedSprite.play("run")
	pass # Replace with function body.


func _on_Tween_tween_completed(object, key):
	if object == self and key == ":position:y":
		if jump:
			if position.y < startY:
				$Tween.interpolate_property(self, "position:y", position.y, position.y+100, 0.8, Tween.TRANS_EXPO, Tween.EASE_IN)
				$Tween.start()
				yield($Tween,"tween_completed")
				jump = false
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	if body.is_in_group("obstacle"):
		life += -1
		print(life)
	elif body.is_in_group("item"):
		itens += 1
		print(itens)
		emit_signal("catch")
		body.queue_free()
	
