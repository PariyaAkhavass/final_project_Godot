extends Node2D
@onready var island_theme: AudioStreamPlayer2D = $island_theme

func _ready() -> void:
	island_theme.play()
