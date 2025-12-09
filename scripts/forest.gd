extends Node2D

@onready var forest_theme: AudioStreamPlayer2D = $forest_theme #forest music
@onready var scene_map = load("res://scenes/d_4.tscn")


var score = 0
func _ready() -> void:
	forest_theme.play()


func wait_and_change_scene():
	await get_tree().create_timer(1).timeout

#pick up the apple, go back to the map
func _on_apple_body_entered(body: Node2D) -> void:
	Ui.number()
	get_tree().change_scene_to_packed(scene_map)
