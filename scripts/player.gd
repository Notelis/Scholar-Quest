extends CharacterBody2D

const SPEED = 300.0  
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(_delta):
	var direction = Vector2.ZERO  

	# Check input for movement
	if Input.is_action_pressed("up"):
		direction.y -= 1
	if Input.is_action_pressed("down"):
		direction.y += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("right"):
		direction.x += 1

	direction = direction.normalized()  
	velocity = direction * SPEED  

	# Play animation based on movement
	if direction != Vector2.ZERO:
		animated_sprite_2d.play("walk")

		# Flip sprite for left/right movement
		if direction.x != 0:
			animated_sprite_2d.flip_h = direction.x < 0
	else:
		animated_sprite_2d.play("idle")  # Play idle animation when not moving

	move_and_slide()  
