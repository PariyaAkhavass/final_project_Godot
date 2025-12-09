extends Node
@export var enemy: CharacterBody2D
@export var enemy_sprite: AnimatedSprite2D
#1st parent is the enemy(wolf, fox), 2nd is the map in which it spawns
 #node is the map containing the player
@onready var player = get_parent().get_parent().get_node("player")
@export var enemy_speed := 85.0

func _physics_process(delta: float) -> void:
	enemy.velocity = enemy.global_position.direction_to(player.global_position) * enemy_speed
	enemy.move_and_slide()
	if enemy.velocity.x >0:
		enemy_sprite.flip_h = false
	else:
		enemy_sprite.flip_h = true




func body_entered(body: Node2D):
	if body.is_in_group("player"):
		player.die()
