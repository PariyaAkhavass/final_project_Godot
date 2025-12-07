extends CharacterBody2D

@export var speed := 120
@export var player_path : NodePath

var player : Node2D

func _ready() -> void:
	player = get_node(player_path)

func _physics_process(_delta: float) -> void:
	if not visible:
		return

	# Calculate direction toward the player
	var direction = (player.global_position - global_position).normalized()
	velocity = direction * speed
	move_and_slide()

	# Check if player is caught
	if global_position.distance_to(player.global_position) < 20:
		player_caught()
		
func player_caught() -> void:
	print("The player was caught!")
	# You can also trigger a game over screen, restart level, or reduce health
