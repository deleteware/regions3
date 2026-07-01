
extends Area2D
@export var timer: Timer
@warning_ignore("unused_private_class_variable")
@export var _body: CollisionShape2D
@onready var player = $"../../../Player"




@warning_ignore("shadowed_variable")
func _on_body_entered(_body):
	print("you died fn")
	Engine.time_scale = 0.5
	timer.start()

func _on_timer_timeout() -> void:
	if GameManager.level == 1:
		print("died on level 1, resetting")
		player.position = Vector2()
	elif GameManager.level == 2:
		print("died on level 2, resetting")
		player.position = Vector2()
	Engine.time_scale = 1
