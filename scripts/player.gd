extends CharacterBody2D
@onready var animated_sprite :AnimatedSprite2D= $AnimatedSprite2D
@export var speed := 100.0
# @export allows for direct changes from the inspector
@export var jump_speed := 10.0


func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("move_left","move_right", "move_down", "move_up")
	if direction != Vector2.ZERO:
		velocity = direction*300.0
	else:
		velocity = Vector2.ZERO
	move_and_slide()
	
	if direction >Vector2.ZERO:
		animated_sprite.flip_h = false
	elif direction <Vector2.ZERO:
		animated_sprite.flip_h = true

	if direction == Vector2.ZERO:
		animated_sprite.play("idle")
	else:
		animated_sprite.play("run")
