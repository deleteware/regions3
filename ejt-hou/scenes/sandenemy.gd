extends Node2D


const speed = 60
var direction = 1
@export var ray_cast_left: RayCast2D
@export var ray_cast_right: RayCast2D
@export var animated_sprite_2d: AnimatedSprite2D
@export var visibletime: Timer
@export var node: Node2D


# Called when the node enters the scene tree for the first time.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	position.x += direction * speed * delta
	
func on_timer_timeout():
	if GameManager.level == 2:
		node.visible = true
