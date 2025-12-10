extends Node2D

@onready var forest_theme: AudioStreamPlayer2D = $forest_theme #forest music

func _ready() -> void:
	forest_theme.play()
