extends StaticBody3D

@onready var hidden_hover = $BuildingMesh/BuildingHover

func _ready() -> void:
	add_to_group("buildings")

func _hover_visible():
	hidden_hover.visible = true
	
func _hover_hidden():
	hidden_hover.visible = false
