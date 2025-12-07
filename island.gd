extends Node2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _ready():

	$"../fox".visible = false
	$"../wolf".visible = false

# Show fox for faces 1..3, wolf for faces 4..6
func show_random_enemy(dice_number: int) -> void:
	if dice_number >= 1 and dice_number <= 3:
		$"../fox".visible = true
		$"../wolf".visible = false
		print("Fox appeared! (dice:", dice_number, ")")
	else:
		$"../wolf".visible = true
		$"../fox".visible = false
		print("Wolf appeared! (dice:", dice_number, ")")
