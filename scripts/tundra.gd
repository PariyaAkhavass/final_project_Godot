extends Node2D

#tundra music
@onready var tundra_theme: AudioStreamPlayer2D = $tundra_theme

#preload map
@onready var scene_map:PackedScene = load("res://scenes/d_4.tscn")

func _ready() -> void:
	tundra_theme.play()


#pick up the fruit, go back to the map
func _on_potato_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_packed(scene_map)
