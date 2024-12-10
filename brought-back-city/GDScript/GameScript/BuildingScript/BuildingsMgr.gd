extends Node

# Building list
var small_house = "res://Scenes/Buildings/SmallHouse.tscn"

var isBuilding = true
var buildingId = 1

# Building creation
func CreateBuilding(pos: Vector3):
	# Load the building resource
	var building_res = load(small_house)
	var building = building_res.instantiate()
	
	building.position = pos  # Use 'position' to set the location in 3D
	get_tree().get_root().add_child(building)
