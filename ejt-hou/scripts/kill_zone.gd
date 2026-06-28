extends Area2D
@export var timer: Timer

func _on_body_entered(_body):
	print("you died fn")
	Engine.time_scale = 0.5
	_body.get_node("CollisionShape2D").queue_free()
	timer.start()



func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	Engine.time_scale = 1
