extends CharacterBody2D

@onready var animated_sprite : AnimatedSprite2D = $AnimatedSprite2D
@export var speed := 300.0

var external_velocity := Vector2.ZERO  # movement from UI buttons

 
func _physics_process(delta: float) -> void:
	# Keyboard movement
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")

	# If keyboard is used → override button movement
	if direction != Vector2.ZERO:
		velocity = direction * speed
	else:
		velocity = external_velocity

	move_and_slide()

	# Flip sprite
	if velocity.x > 0:
		animated_sprite.flip_h = false
	elif velocity.x < 0:
		animated_sprite.flip_h = true

	# Animations
	if velocity == Vector2.ZERO:
		animated_sprite.play("idle")
	else:
		animated_sprite.play("run")
