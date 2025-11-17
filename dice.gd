extends Node2D

@onready var dice_sprite : AnimatedSprite2D  = $D6_Sprite



func _on_roll_button_pressed() -> void:
	dice_sprite.play("Rolling")

func _on_d_6_sprite_animation_finished() -> void:
	var new_number = randi_range(1,6)
	if new_number == 1:
		dice_sprite.play("1")
	elif new_number == 2:
		dice_sprite.play("2")
	elif new_number == 3:
		dice_sprite.play("3")
	elif new_number == 4:
		dice_sprite.play("4")
	elif new_number == 5:
		dice_sprite.play("5")
	elif new_number == 6:
		dice_sprite.play("6")
