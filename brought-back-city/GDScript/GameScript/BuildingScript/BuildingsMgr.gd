extends Node

# Building list
var building1 = "res://Scenes/Buildings/SmallHouse.tscn"

# Building creation
func CreateBuilding(pos: Vector3):
	# Load the building resource
	var building_res = load(building1)
	var building = building_res.instantiate()
	
	building.position = pos  # Use 'position' to set the location in 3D
	get_tree().get_root().add_child(building)
