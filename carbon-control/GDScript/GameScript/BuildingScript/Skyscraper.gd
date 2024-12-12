extends StaticBody3D

@onready var hidden_hover = $BuildingMesh2/BuildingHover2
var x_size = 9
var y_size = 9
var price = 7040000
var citizens = 128

func _ready() -> void:
	add_to_group("buildings")

# This function will make the hover effect around the mesh visible
func _hover_visible():
	hidden_hover.visible = true

# This function will make the hover effect around the mesh invisible
func _hover_hidden():
	hidden_hover.visible = false
