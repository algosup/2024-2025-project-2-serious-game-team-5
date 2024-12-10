extends Node

# Building list
## Residential building
var small_house = "res://Scenes/Buildings/SmallHouse.tscn" # 1x1
var medium_house = "res://Scenes/Buildings/MediumHouse.tscn" # 2x2
var large_house = "res://Scenes/Buildings/LargeHouse.tscn" # 3x3
var apartment = "res://Scenes/Buildings/Apartment.tscn" # 5x5
var skyscraper = "res://Scenes/Buildings/Skyscraper.tscn" # 9x9

## Commercial buildings
var bookshop = "res://Scenes/Buildings/Bookshop.tscn" # 2x2
var barber = "res://Scenes/Buildings/Barber.tscn" # 2x2
var bakery = "res://Scenes/Buildings/Bakery.tscn" # 2x2
var pharmacy = "res://Scenes/Buildings/Pharmacy.tscn" # 2x2
var hardware_shop = "res://Scenes/Buildings/HardwareShop.tscn" # 2x2
var farm = "res://Scenes/Buildings/Farm.tscn" # 12x12
var casino = "res://Scenes/Buildings/Casino.tscn" # 6x6

## Industrial buildings
var factory = "res://Scenes/Buildings/Factory.tscn" # 4x4
var power_plant = "res://Scenes/Buildings/PowerPlant.tscn" # 5x5

## Public buildings
var city_hall = "res://Scenes/Buildings/CityHall.tscn" # 3x3
var school = "res://Scenes/Buildings/School.tscn" # 3x3
var hospital = "res://Scenes/Buildings/Hospital.tscn" # 3x3
var museum = "res://Scenes/Buildings/Museum.tscn" # 8x8

## Green space and green energy buildings
var lake = "res://Scenes/Buildings/Lake.tscn" # 3x3
var wind_turbine = "res://Scenes/Buildings/WindTurbine.tscn" # 4x4
var solar_panel = "res://Scenes/Buildings/SolarPanel.tscn" # 4x4

## Decorative buildings
var tree = "res://Scenes/Buildings/Tree.tscn" # 1x1
var bench = "res://Scenes/Buildings/Bench.tscn" # 1x1
var street_light = "res://Scenes/Buildings/StreetLight.tscn" # 1x1

## Road
var road = "res://Scenes/Buildings/Road.tscn" # 1x1

var gridData = [] # 512x512 grid data

var isBuilding = true
var buildingId = 1

func _ready():
	for i in range(262144):
		gridData.append(0)

# Building creation
func CreateBuilding(pos: Vector3, posTab: int):
	if gridData[posTab] == 0:
		# Load the building resource
		var building_res = load(medium_house)
		var building = building_res.instantiate()
		
		building.position = pos  # Use 'position' to set the location in 3D
		get_tree().get_root().add_child(building)
		# Set the grid data to 1 based on the building size
		gridData[posTab] = 1
		gridData[posTab + 1] = 1
		gridData[posTab - 1] = 1
		gridData[posTab + 511] = 1
		gridData[posTab + 512] = 1
		gridData[posTab + 513] = 1
		gridData[posTab - 511] = 1
		gridData[posTab - 512] = 1
		gridData[posTab - 513] = 1


	else:
		print("Cell already occupied")
