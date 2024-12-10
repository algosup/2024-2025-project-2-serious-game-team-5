extends StaticBody3D

var marker
var pos = Vector3()

func _ready() -> void:
	marker = get_node("/root/World/Marker")

func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	var posX = round(event_position.x)
	var posY = round(event_position.z)
	marker.transform.origin = Vector3(posX, 0, posY) 

	var vec = Vector2(round(event_position.x), round(event_position.z))
	var posTab = vec.x + (vec.y * 512)

	# Load the materials
	var red_material = preload("res://Materials/red_material_3d.tres")
	var green_material = preload("res://Materials/green_material_3d.tres")
	
	# Check the grid data and assign the appropriate material
	if BuildingsMgr.gridData[posTab] != 0:
		marker.material_override = red_material
	else:
		marker.material_override = green_material
	
	# Handle building creation when left click is pressed
	if Input.is_action_just_pressed("left_click") and BuildingsMgr.isBuilding:
		print("Building created at " + str(marker.transform.origin))
		pos = Vector3(posX, 0, posY)
		BuildingsMgr.CreateBuilding(pos, posTab)
