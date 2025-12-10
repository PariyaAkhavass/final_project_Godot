extends Node2D
@onready var dice_sprite : AnimatedSprite2D  = $D6_Sprite
@onready var fox = preload("res://scenes/fox.tscn")
@onready var wolf = preload("res://scenes/wolf.tscn")
@onready var apple = preload("res://scenes/apple.tscn")
@onready var potato = preload("res://scenes/potato.tscn")

func _on_roll_button_pressed() -> void:
	dice_sprite.play("Rolling")

func _on_d_6_sprite_animation_finished() -> void:
	var new_number = randi_range(1,6)
	match new_number:
		1: 
			dice_sprite.play("1")
			summon(fox)
		2:
			dice_sprite.play("2")
			summon(apple)
		3: 
			dice_sprite.play("3")
			summon(wolf)
		4: 
			dice_sprite.play("4")
			for i in range(randi_range(2, 4)):
				summon(fox)
		5: 
			dice_sprite.play("5")
			for i in range(randi_range(2, 4)):
				summon(wolf)
		6: 
			dice_sprite.play("6")
			summon(potato)


func summon(scene: PackedScene):
	var scene_instance = scene.instantiate()
	#rotated randf_range calculates at which postition on the circle's radius will the thingy spawns
	scene_instance.global_position = position + Vector2(200,0).rotated(randf_range(0, 2*PI))
	get_parent().add_child(scene_instance)
