extends Node2D
#tundra music
@onready var tundra_theme: AudioStreamPlayer2D = $tundra_theme

func _ready() -> void:
	tundra_theme.play()
