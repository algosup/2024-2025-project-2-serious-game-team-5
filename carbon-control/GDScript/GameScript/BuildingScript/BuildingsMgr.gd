extends Node

@onready var save_timer: Timer = $SaveTimer

# Building list
## Residential building
var small_house = "res://Scenes/Buildings/SmallHouse.tscn" # 1x1 ID: 1
var medium_house = "res://Scenes/Buildings/MediumHouse.tscn" # 2x2 ID: 2
var large_house = "res://Scenes/Buildings/LargeHouse.tscn" # 2x3 ID: 3
var apartment = "res://Scenes/Buildings/Apartment.tscn" # 5x4 ID: 4
var skyscraper = "res://Scenes/Buildings/Skyscraper.tscn" # 8x7 ID: 5

## Commercial buildings
var bookshop = "res://Scenes/Buildings/Bookshop.tscn" # 3x3 ID: 6
var barber = "res://Scenes/Buildings/Barber.tscn" # 2x2 ID: 7
var bakery = "res://Scenes/Buildings/Bakery.tscn" # 2x2 ID: 8
var pharmacy = "res://Scenes/Buildings/Pharmacy.tscn" # 3x3 ID: 9
var hardware_shop = "res://Scenes/Buildings/HardwareShop.tscn" # 4x4 ID: 10
var farm = "res://Scenes/Buildings/Farm.tscn" # 6x8 ID: 11
var casino = "res://Scenes/Buildings/Casino.tscn" # 4x10 ID: 12

## Industrial buildings
var factory = "res://Scenes/Buildings/Factory.tscn" # 7x7 ID: 13
var power_plant = "res://Scenes/Buildings/PowerPlant.tscn" # 40x24 ID: 14

## Public buildings
var city_hall = "res://Scenes/Buildings/CityHall.tscn" # 6x8 ID: 15
var school = "res://Scenes/Buildings/School.tscn" # 5x3 ID: 16
var hospital = "res://Scenes/Buildings/Hospital.tscn" # 16x8 ID: 17
var museum = "res://Scenes/Buildings/Museum.tscn" # 6x6 ID: 18

## Green space and green energy buildings
var lake = "res://Scenes/Buildings/Lake.tscn" # 6x8 ID: 19
var wind_turbine = "res://Scenes/Buildings/WindTurbine.tscn" # 7x9 ID: 20
var solar_panel = "res://Scenes/Buildings/SolarPanel.tscn" # 4x4 ID: 21

## Decorative buildings
var tree = "res://Scenes/Buildings/Tree.tscn" # 1x1 ID: 22
var park = "res://Scenes/Buildings/Park.tscn" # 4x4 ID: 23

## Roads
var road = "res://Scenes/Buildings/Road.tscn" # 1x1 ID: 24

var gridData = [] # 512x512 grid data
var current_rotation = 0 # Rotation angle in degrees (0, 90, 180, 270)
var rotation_angle = 0 # Current rotation angle in degrees

var building_instances = {} # Store building instances with their position as key.

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
}

func _ready():
	for i in range(262144):
		gridData.append(0)

	if save_timer:
		save_timer.timeout.connect(_on_save_timer_timeout)
		save_timer.start()
	else:
		print("Error: Missing save timer")


func RotateBuilding():
	current_rotation = (current_rotation + 90) % 360
	print("Current rotation: ", current_rotation)

func GetSelectedBuilding():
	if GlobalVariables.selected_building == 1:
		return small_house
	elif GlobalVariables.selected_building == 2:
		return medium_house
	elif GlobalVariables.selected_building == 3:
		return large_house
	elif GlobalVariables.selected_building == 4:
		return apartment
	elif GlobalVariables.selected_building == 5:
		return skyscraper
	elif GlobalVariables.selected_building == 6:
		return bookshop
	elif GlobalVariables.selected_building == 7:
		return barber
	elif GlobalVariables.selected_building == 8:
		return bakery
	elif GlobalVariables.selected_building == 9:
		return pharmacy
	elif GlobalVariables.selected_building == 10:
		return hardware_shop
	elif GlobalVariables.selected_building == 11:
		return farm
	elif GlobalVariables.selected_building == 12:
		return casino
	elif GlobalVariables.selected_building == 13:
		return factory
	elif GlobalVariables.selected_building == 14:
		return power_plant
	elif GlobalVariables.selected_building == 15:
		return city_hall
	elif GlobalVariables.selected_building == 16:
		return school
	elif GlobalVariables.selected_building == 17:
		return hospital
	elif GlobalVariables.selected_building == 18:
		return museum
	elif GlobalVariables.selected_building == 19:
		return lake
	elif GlobalVariables.selected_building == 20:
		return wind_turbine
	elif GlobalVariables.selected_building == 21:
		return solar_panel
	elif GlobalVariables.selected_building == 22:
		return tree
	elif GlobalVariables.selected_building == 23:
		return park
	elif GlobalVariables.selected_building == 24:
		return road
	else:
		return

func _update_building_nb() -> void:
	if GlobalVariables.selected_building == 1:
		GlobalVariables.small_house_nb += 1
	elif GlobalVariables.selected_building == 2:
		GlobalVariables.medium_house_nb += 1
	elif GlobalVariables.selected_building == 3:
		GlobalVariables.large_house_nb += 1
	elif GlobalVariables.selected_building == 4:
		GlobalVariables.apartment_nb += 1
	elif GlobalVariables.selected_building == 5:
		GlobalVariables.skyscrapper_nb += 1
	elif GlobalVariables.selected_building == 6:
		GlobalVariables.bookshop_nb += 1
	elif GlobalVariables.selected_building == 7:
		GlobalVariables.bakery_nb += 1
	elif GlobalVariables.selected_building == 8:
		GlobalVariables.barber_shop_nb += 1
	elif GlobalVariables.selected_building == 9:
		GlobalVariables.pharmacy_nb += 1
	elif GlobalVariables.selected_building == 10:
		GlobalVariables.hardware_store_nb += 1
	elif GlobalVariables.selected_building == 11:
		GlobalVariables.farm_nb += 1
	elif GlobalVariables.selected_building == 12:
		GlobalVariables.casino_nb += 1
	elif GlobalVariables.selected_building == 13:
		GlobalVariables.factory_nb += 1
	elif GlobalVariables.selected_building == 14:
		GlobalVariables.power_plant_nb += 1
	elif GlobalVariables.selected_building == 15:
		GlobalVariables.city_hall_nb += 1
		GlobalVariables.happiness_bonus += 0.1
	elif GlobalVariables.selected_building == 16:
		GlobalVariables.school_nb += 1
		GlobalVariables.happiness_bonus += 0.4
	elif GlobalVariables.selected_building == 17:
		GlobalVariables.hospital_nb += 1
		GlobalVariables.happiness_bonus += 0.6
	elif GlobalVariables.selected_building == 18:
		GlobalVariables.museum_nb += 1
		GlobalVariables.happiness_bonus += 1.2
	elif GlobalVariables.selected_building == 19:
		GlobalVariables.lake_nb += 1
		GlobalVariables.happiness_bonus += 0.4
	elif GlobalVariables.selected_building == 20:
		GlobalVariables.wind_turbine_nb += 1
	elif GlobalVariables.selected_building == 21:
		GlobalVariables.solar_panel_nb += 1
	elif GlobalVariables.selected_building == 22:
		GlobalVariables.tree_nb += 1
	elif GlobalVariables.selected_building == 23:
		GlobalVariables.park_nb += 1
		GlobalVariables.happiness_bonus += 0.3
	elif GlobalVariables.selected_building == 24:
		GlobalVariables.road_nb += 1
	else:
		return
		
func _update_popu_capa():
	var new_max_capa: int = GlobalVariables.small_house_nb * 2
	new_max_capa += GlobalVariables.medium_house_nb * 4
	new_max_capa += GlobalVariables.large_house_nb * 6
	new_max_capa += GlobalVariables.apartment_nb * 70
	new_max_capa += GlobalVariables.skyscrapper_nb * 1000
	GlobalVariables.population_max = new_max_capa

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("rotate_building"): # Handle "R" key press
		rotation_angle = (rotation_angle + 90) % 180
		print("Rotation angle: ", rotation_angle)

# Building creation
func CreateBuilding(pos: Vector3, pos_tab: int):
	# Check if player has enough money
	if GlobalVariables.remaining_money < GlobalVariables.building_price:
		print("Player needs more money to buy this building")
		return

	# Check if the selected grid tile is available
	if gridData[pos_tab] == 0 or GlobalVariables.selected_building == 24: # Roads are exempt from placement checks
		var building_path = GetSelectedBuilding()

		if building_path == null:
			print("No building selected.")
			return

		if gridData[pos_tab] == 0 or GlobalVariables.selected_building == 24: # Roads are exempt from placement checks
			building_path = GetSelectedBuilding()
			
			# Update building count
			_update_building_nb()
			
			# Update population capacity
			_update_popu_capa()
			GlobalCarbon.update_carbon()
			GlobalPopulation.display_population()
			

			# Load the building resource
			var building_res = load(building_path)
			if building_res == null:
				print("Failed to load building resource: ", building_path)
				return

			# Instantiate the building
			var building = building_res.instantiate()
			building.position = pos
			
			# Apply rotation if rotation_angle is set
			if rotation_angle != 0:
				building.rotation_degrees = Vector3(0, rotation_angle, 0)
			
			get_tree().get_root().get_child(7).add_child(building)
			var new_node = get_tree().get_root().get_child(7).get_child(get_tree().get_root().get_child(7).get_child_count() - 1)
			new_node.name = "Building" + str(GlobalVariables.selected_building) + str(new_node.get_instance_id())
			new_node.owner = get_tree().get_root().get_child(7)
			
			# Update money
			GlobalMoney.rem_money(GlobalVariables.building_price)

			# Update all grid tiles occupied by the building
			var size = building_sizes.get(GlobalVariables.selected_building, Vector2(1, 1))
			var vec = Vector2(pos.x, pos.z)
			get_node("/root/World/WorldAudioManager/Construction").play()
			# Swap width and height if the building is rotated 90° or 270°
			if rotation_angle in [90, 270]:
				size = Vector2(size.y, size.x)
			
			for x in range(size.x):
				for y in range(size.y):
					var tile_index = (vec.x + x) + ((vec.y + y) * 512)
					gridData[tile_index] = GlobalVariables.selected_building # Use the building ID as marker
			# Add the instance to building_instances
			building_instances[pos_tab] = building
		else:
			print("Building already exists at this location.")
	else:
		print("You're not allowed to build here")

func DestroyBuilding(pos: Vector3, pos_tab: int):
	if GlobalVariables.isDestroying:
		if GlobalVariables.remaining_money < GlobalVariables.destroy_price:
			print("Player need more money to destroy")
			return

		if gridData[pos_tab] != 0:
			# Retrieve the building instance from the dictionary
			var building = building_instances.get(pos_tab)
			if building != null:
				building.queue_free()
				building_instances.erase(pos_tab)
			else:
				print("Failed to find building instance for grid position: ", pos_tab)

			# Clear the gridData entry
			gridData[pos_tab] = 0
	else:
		print("You're not allowed to destroy buildings")


func _on_save_timer_timeout() -> void:
	_save_game()

func _save_game() -> void:
	print("Saved game")
	var node_to_save = self # Change this if the buildings are under a specific subnode like $NodeToSave
	var scene = PackedScene.new()
	scene.pack(node_to_save)
	ResourceSaver.save(scene, "res://Scenes/SavedGame.tscn")
