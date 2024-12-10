extends StaticBody3D

@onready var hidden_hover = $BuildingMesh/BuildingHover
var x_size = 1
var y_size = 1
var price = 28000
var citizens = 2

func _ready() -> void:
	add_to_group("buildings")

func _hover_visible():
	hidden_hover.visible = true
	
func _hover_hidden():
	hidden_hover.visible = false
