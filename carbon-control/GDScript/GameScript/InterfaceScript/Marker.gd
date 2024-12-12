extends StaticBody3D

var marker
var pos = Vector3()

# Store the dimensions of each building (width x height)
var building_sizes = {
	1: Vector2(1, 1), # Small house
	2: Vector2(2, 2), # Medium house
	3: Vector2(2, 3), # Large house
	4: Vector2(4, 5), # Apartment
	5: Vector2(7, 8), # Skyscraper
	6: Vector2(3, 3), # Bookshop
	7: Vector2(2, 2), # Barber
	8: Vector2(2, 2), # Bakery
	9: Vector2(3, 3), # Pharmacy
	10: Vector2(4, 4), # Hardware shop
	11: Vector2(9, 12), # Farm
	12: Vector2(4, 10), # Casino
	13: Vector2(7, 7), # Factory
	14: Vector2(24, 40), # Power plant
	15: Vector2(8, 6), # City hall
	16: Vector2(3, 5), # School
	17: Vector2(8, 16), # Hospital
	18: Vector2(6, 6), # Museum
	19: Vector2(6, 8), # Lake
	20: Vector2(7, 9), # Wind turbine
	21: Vector2(4, 4), # Solar panel
	22: Vector2(2, 2), # Tree
	23: Vector2(4, 4), # Park
	24: Vector2(1, 1), # Horizontal road
	25: Vector2(1, 1), # Vertical road
}

func _ready() -> void:
	marker = get_node("/root/World/Marker")

func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if event is InputEventMouseMotion or event is InputEventMouseButton:
		var posX = round(event_position.x)
		var posY = round(event_position.z)

		# Get building size and adjust for rotation
		var size = building_sizes.get(BuildingsMgr.selected_building, Vector2(1, 1))
		var rotated_size = size
		if BuildingsMgr.rotation_angle in [90, 270]:
			rotated_size = Vector2(size.y, size.x)

		# Snap position and update marker origin
		var snapped_posX = round(posX / grid_size) * grid_size
		var snapped_posY = round(posY / grid_size) * grid_size
		marker.transform.origin = Vector3(
			snapped_posX - (rotated_size.x - 1) / 2,
			0.1,
			snapped_posY - (rotated_size.y - 1) / 2
		)

		# Update marker scale and rotation
		marker.scale = Vector3(rotated_size.x, 1, rotated_size.y)
		marker.rotation_degrees = Vector3(0, BuildingsMgr.rotation_angle, 0)

		# Collision detection logic
		var vec = Vector2(snapped_posX, snapped_posY)
		var occupied = false
		for x in range(rotated_size.x):
			for y in range(rotated_size.y):
				var pos_tab = (vec.x + x) + ((vec.y + y) * 512)
				if pos_tab < 0 or pos_tab >= BuildingsMgr.gridData.size():
					occupied = true
					break
				if BuildingsMgr.gridData[pos_tab] != 0:
					occupied = true
					break
			if occupied:
				break

		# Define marker color
		_define_marker_color(occupied)

		# Handle building placement
		if Input.is_action_just_pressed("left_click") and BuildingsMgr.isBuilding:
			if not occupied:
				print("Building created at " + str(marker.transform.origin))
				var pos = Vector3(snapped_posX, 0, snapped_posY)
				BuildingsMgr.CreateBuilding(pos, vec.x + vec.y * 512)
			else:
				print("Cannot place building here, area is occupied.")

func _define_marker_color(occupied: bool):
	# Load the materials
	var red_material = preload("res://Materials/red_material_3d.tres")
	var green_material = preload("res://Materials/green_material_3d.tres")

	# Assign the appropriate material
	if occupied:
		marker.material_override = red_material
	else:
		marker.material_override = green_material
