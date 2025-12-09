extends CanvasLayer
var count: = 0
@onready var food_label: Label = $UI/food_label

func _ready() -> void:
	food_label.text = str(count)
	
func number() -> void:
	count +=1
	food_label.text = str(count)
