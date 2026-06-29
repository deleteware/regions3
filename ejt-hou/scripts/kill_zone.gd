extends Area2D

@export var timer: Timer
@export var mid_1: TileMapLayer
@export var back_1: TileMapLayer
@export var mid_2: TileMapLayer
@export var back_2: TileMapLayer
@export var player: CharacterBody2D



func _on_body_entered(_body):
	print("you died fn")
	Engine.time_scale = 0.5
	_body.get_node("CollisionShape2D").queue_free()
	timer.start()



func _on_timer_timeout() -> void:
	if GameManager.level == 1:
		print("died on level 1, resetting")
		get_tree().reload_current_scene()
	elif GameManager.level == 2:
		print("died on level 2, resetting")
		get_tree().reload_current_scene()
		mid_1.enabled = false
		back_1.enabled = false
		if mid_1.enabled == true:
			print("failed to deload level 1")
		elif mid_1.enabled == false:
			print("level 1 deloaded")
		mid_2.enabled = true
		back_2.enabled = true
		if back_2.enabled == false:
			print("failed to load level 2")
		elif back_2.enabled == true:
			print("level 2 loaded")
		player.position = Vector2()
	Engine.time_scale = 1
