extends CharacterBody2D

@onready var coyote_timer = $CoyoteTimer
@onready var jumpsfx = $JumpSFX
var jumped = false
const SPEED = 120.0
const JUMP_VELOCITY = -300.0
@export var animated_sprite: AnimatedSprite2D


func _physics_process(delta: float) -> void:
	# get dat gravity
	if not is_on_floor():
		velocity += get_gravity() * delta
	if is_on_floor():
		$CoyoteTimer.start()
	if not $CoyoteTimer.is_stopped() and Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_VELOCITY
		jumpsfx.play()
		$CoyoteTimer.stop()


	var direction := Input.get_axis("move_left", "move_right")
	
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true

	

		
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
			jumped = false
		else:
			animated_sprite.play("run")
			jumped = false
	else:
		animated_sprite.play("jump")
		
		
	
			
	

	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
