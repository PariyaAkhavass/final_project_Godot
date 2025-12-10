extends Node
@onready var scene_map:PackedScene = load("res://scenes/d_4.tscn")

func body_entered(body: Node2D) -> void:
	Ui.number()
	if Ui.count >= 7:
		get_tree().change_scene_to_file("res://scenes/victory.tscn")
	else:
		get_tree().change_scene_to_packed(scene_map)
