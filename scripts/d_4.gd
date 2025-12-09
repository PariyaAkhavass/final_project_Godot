#d_4 is the compass and level select
extends Node2D

@onready var arrow: AnimatedSprite2D = $compass/arrow
@export var level_names : Array[PackedScene]

#list of leves
var levels := ["forest", "tundra", "desert", "sea"]
@onready var scene_forest = preload("res://scenes/forest.tscn")
@onready var scene_tundra = preload("res://scenes/tundra.tscn")
@onready var scene_desert = preload("res://scenes/desert.tscn")
@onready var scene_island = preload("res://scenes/island.tscn")



var current_roll : int

#i pressa da button, i getta da animation
func _on_compass_pressed():
	play_animation()
	roll_dice()
	wait_and_change_scene()

#when animation done
func _on_arrow_animation_finished() -> void:
	wait_and_change_scene()


#choose a random number between 1 and 4
func roll_dice() -> int:
	return randi_range(1, 4)


#compass animation
func play_animation() -> void:
	arrow.play("Rolling")


#wait before chaning the scene
func wait_and_change_scene():
	await get_tree().create_timer(1).timeout
	match roll_dice():
		1: get_tree().change_scene_to_packed(scene_forest)
		2: get_tree().change_scene_to_packed(scene_tundra)
		3: get_tree().change_scene_to_packed(scene_island)
		4: get_tree().change_scene_to_packed(scene_desert)
