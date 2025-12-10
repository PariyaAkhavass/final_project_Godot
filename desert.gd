extends Node2D
@onready var desert_theme: AudioStreamPlayer2D = $desert_theme

func _ready() -> void:
	desert_theme.play()
