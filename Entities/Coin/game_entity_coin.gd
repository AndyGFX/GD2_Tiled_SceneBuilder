extends Area2D


var item_type = "coin"
export var item_amount = 1
export var item_id = 0

func _ready():
	pass

# pickup item method which is called from area detector assigned on player
func pickup():
	if !has_node("/root/Inventory"): return
	get_node("/root/Inventory").Add(item_type,item_amount)
	queue_free()
