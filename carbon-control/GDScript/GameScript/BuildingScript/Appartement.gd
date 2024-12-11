extends StaticBody3D

@onready var hidden_hover = $BuildingMesh2/BuildingHover2
var x_size = 5
var y_size = 5
var price = 1320000
var citizens = 24

func _ready() -> void:
	add_to_group("buildings")

# This function will make the hover effect around the mesh visible
func _hover_visible():
	hidden_hover.visible = true

# This function will make the hover effect around the mesh invisible
func _hover_hidden():
	hidden_hover.visible = false
