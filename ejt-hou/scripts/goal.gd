extends Node2D
@export var goal: Area2D
@onready var timer = $Timer
@export var mid_1: TileMapLayer
@export var back_1: TileMapLayer
@export var mid_2: TileMapLayer
@export var back_2: TileMapLayer
@export var player: CharacterBody2D



var spawn_pos = Vector2(100, 100)



func _on_body_entered(_body):
	print("level complete")
	Engine.time_scale = 0.25
	timer.start()



func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	if GameManager.level == 1:
		print("level 1 complete, loading level 2")
		mid_1.enabled = false
		back_1.enabled = false
		mid_2.enabled = true
		back_2.enabled = true
	if mid_2.enabled == true:
		print("level 2 loaded")
		player.position = Vector2()
		GameManager.level = 2
	
