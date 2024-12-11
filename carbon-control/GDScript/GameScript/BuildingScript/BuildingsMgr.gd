extends Node

# Building list
## Residential building
var small_house = "res://Scenes/Buildings/SmallHouse.tscn" # 1x1 ID: 1
var medium_house = "res://Scenes/Buildings/MediumHouse.tscn" # 2x2 ID: 2
var large_house = "res://Scenes/Buildings/LargeHouse.tscn" # 3x3 ID: 3
var apartment = "res://Scenes/Buildings/Apartment.tscn" # 5x5 ID: 4
var skyscraper = "res://Scenes/Buildings/Skyscraper.tscn" # 9x9 ID: 5

## Commercial buildings
var bookshop = "res://Scenes/Buildings/Bookshop.tscn" # 2x2 ID: 6
var barber = "res://Scenes/Buildings/Barber.tscn" # 2x2 ID: 7
var bakery = "res://Scenes/Buildings/Bakery.tscn" # 2x2 ID: 8
var pharmacy = "res://Scenes/Buildings/Pharmacy.tscn" # 2x2 ID: 9
var hardware_shop = "res://Scenes/Buildings/HardwareShop.tscn" # 2x2 ID: 10
var farm = "res://Scenes/Buildings/Farm.tscn" # 12x12 ID: 11
var casino = "res://Scenes/Buildings/Casino.tscn" # 6x6 ID: 12

## Industrial buildings
var factory = "res://Scenes/Buildings/Factory.tscn" # 4x4 ID: 13
var power_plant = "res://Scenes/Buildings/PowerPlant.tscn" # 5x5 ID: 14

## Public buildings
var city_hall = "res://Scenes/Buildings/CityHall.tscn" # 3x3 ID: 15
var school = "res://Scenes/Buildings/School.tscn" # 3x3 ID: 16
var hospital = "res://Scenes/Buildings/Hospital.tscn" # 3x3 ID: 17
var museum = "res://Scenes/Buildings/Museum.tscn" # 8x8 ID: 18

## Green space and green energy buildings
var lake = "res://Scenes/Buildings/Lake.tscn" # 3x3 ID: 19
var wind_turbine = "res://Scenes/Buildings/WindTurbine.tscn" # 4x4 ID: 20
var solar_panel = "res://Scenes/Buildings/SolarPanel.tscn" # 4x4 ID: 21

## Decorative buildings
var tree = "res://Scenes/Buildings/Tree.tscn" # 1x1 ID: 22
var bench = "res://Scenes/Buildings/Bench.tscn" # 1x1 ID: 23
var street_light = "res://Scenes/Buildings/StreetLight.tscn" # 1x1 ID: 24

## Road
var road = "res://Scenes/Buildings/Road.tscn" # 1x1 ID: 25

var gridData = [] # 512x512 grid data

var isBuilding = true
var selected_building = 0
var building_price = 0

func _ready():
	for i in range(262144):
		gridData.append(0)

func GetSelectedBuilding():
	if selected_building == 1:
		return small_house
	elif selected_building == 2:
		return medium_house
	elif selected_building == 3:
		return large_house
	elif selected_building == 4:
		return apartment
	elif selected_building == 5:
		return skyscraper
	elif selected_building == 6:
		return bookshop
	elif selected_building == 7:
		return barber
	elif selected_building == 8:
		return bakery
	elif selected_building == 9:
		return pharmacy
	elif selected_building == 10:
		return hardware_shop
	elif selected_building == 11:
		return farm
	elif selected_building == 12:
		return casino
	elif selected_building == 13:
		return factory
	elif selected_building == 14:
		return power_plant
	elif selected_building == 15:
		return city_hall
	elif selected_building == 16:
		return school
	elif selected_building == 17:
		return hospital
	elif selected_building == 18:
		return museum
	elif selected_building == 19:
		return lake
	elif selected_building == 20:
		return wind_turbine
	elif selected_building == 21:
		return solar_panel
	elif selected_building == 22:
		return tree
	elif selected_building == 23:
		return bench
	elif selected_building == 24:
		return street_light
	elif selected_building == 25:
		return road
	else:
		return

func _update_building_nb() -> void:
	if selected_building == 1:
		GlobalVariables.small_house_nb += 1
	elif selected_building == 2:
		GlobalVariables.medium_house_nb += 1
	elif selected_building == 3:
		GlobalVariables.large_house_nb += 1
	elif selected_building == 4:
		GlobalVariables.apartment_nb += 1
	elif selected_building == 5:
		GlobalVariables.skyscrapper_nb += 1
	elif selected_building == 6:
		GlobalVariables.bookshop_nb += 1
	elif selected_building == 7:
		GlobalVariables.bakery_nb += 1
	elif selected_building == 8:
		GlobalVariables.barber_shop_nb += 1
	elif selected_building == 9:
		GlobalVariables.pharmacy_nb += 1
	elif selected_building == 10:
		GlobalVariables.hardware_store_nb += 1
	elif selected_building == 11:
		GlobalVariables.farm_nb += 1
	elif selected_building == 12:
		GlobalVariables.casino_nb += 1
	elif selected_building == 13:
		GlobalVariables.factory_nb += 1
	elif selected_building == 14:
		GlobalVariables.power_plant_nb += 1
	elif selected_building == 15:
		return
	elif selected_building == 16:
		GlobalVariables.school_nb += 1
	elif selected_building == 17:
		GlobalVariables.hospital_nb += 1
	elif selected_building == 18:
		GlobalVariables.museum_nb += 1
	elif selected_building == 19:
		GlobalVariables.lake_nb += 1
	elif selected_building == 20:
		GlobalVariables.wind_turbine_nb += 1
	elif selected_building == 21:
		GlobalVariables.solar_panel_nb += 1
	elif selected_building == 22:
		GlobalVariables.tree_nb += 1
	elif selected_building == 23:
		GlobalVariables.bench_nb += 1
	elif selected_building == 24:
		GlobalVariables.street_light_nb += 1
	elif selected_building == 25:
		GlobalVariables.road_nb += 1
	else:
		return
		
func _update_popu_capa():
	var new_max_capa: int = GlobalVariables.small_house_nb * 2
	new_max_capa += GlobalVariables.medium_house_nb * 4
	new_max_capa += GlobalVariables.large_house_nb * 6
	new_max_capa += GlobalVariables.apartment_nb * 24
	new_max_capa += GlobalVariables.skyscrapper_nb * 128
	GlobalVariables.population_max = new_max_capa
	

# Building creation
func CreateBuilding(pos: Vector3, posTab: int):
	# Check if player as enought money
	if GlobalVariables.remaining_money < building_price:
		print("Player need more money to buy this building")
		return
		
	if gridData[posTab] == 0:
		# Get the selected building
		var building_path = GetSelectedBuilding()
		
				# Update builing nb
		_update_building_nb()
		# Update population capacity
		_update_popu_capa()
		GlobalPopulation.display_population()
		# Check if a building is selected
		if building_path == null:
			print("No building selected.")
			return

		# Load the building resource
		var building_res = load(building_path)
		if building_res == null:
			print("Failed to load building resource: ", building_path)
			return

		var building = building_res.instantiate()
		
		building.position = pos  # Use 'position' to set the location in 3D
		get_tree().get_root().add_child(building)
		selected_building = 0
		
		# Update money
		GlobalMoney.rem_money(building_price)

		# Update the grid based on the building type
		match building_path:
			"res://Scenes/Buildings/SmallHouse.tscn":
				gridData[posTab - 513] = 1
				gridData[posTab - 512] = 1
				gridData[posTab - 511] = 1
				gridData[posTab - 1] = 1
				gridData[posTab] = 1
				gridData[posTab + 1] = 1
				gridData[posTab + 511] = 1
				gridData[posTab + 512] = 1
				gridData[posTab + 513] = 1
			"res://Scenes/Buildings/MediumHouse.tscn":
				gridData[posTab - 513] = 1
				gridData[posTab - 512] = 1
				gridData[posTab - 511] = 1
				gridData[posTab - 2] = 1
				gridData[posTab - 1] = 1
				gridData[posTab] = 1
				gridData[posTab + 1] = 1
				gridData[posTab + 2] = 1
				gridData[posTab + 511] = 1
				gridData[posTab + 512] = 1
				gridData[posTab + 513] = 1
	else:
		print("Cell already occupied")
