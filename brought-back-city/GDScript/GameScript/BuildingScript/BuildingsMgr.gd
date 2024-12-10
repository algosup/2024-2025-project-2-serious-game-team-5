extends Node

# Building list
## Residential building
var small_house = "res://Scenes/Buildings/SmallHouse.tscn"
var medium_house = "res://Scenes/Buildings/MediumHouse.tscn"
var large_house = "res://Scenes/Buildings/LargeHouse.tscn"
var apartment = "res://Scenes/Buildings/Apartment.tscn"
var skyscraper = "res://Scenes/Buildings/Skyscraper.tscn"

## Commercial buildings
var bookshop = "res://Scenes/Buildings/Bookshop.tscn"
var barber = "res://Scenes/Buildings/Barber.tscn"
var bakery = "res://Scenes/Buildings/Bakery.tscn"
var pharmacy = "res://Scenes/Buildings/Pharmacy.tscn"
var hardware_shop = "res://Scenes/Buildings/HardwareShop.tscn"
var farm = "res://Scenes/Buildings/Farm.tscn"
var casino = "res://Scenes/Buildings/Casino.tscn"

## Industrial buildings
var factory = "res://Scenes/Buildings/Factory.tscn"
var power_plant = "res://Scenes/Buildings/PowerPlant.tscn"

## Public buildings
var city_hall = "res://Scenes/Buildings/CityHall.tscn"
var school = "res://Scenes/Buildings/School.tscn"
var hospital = "res://Scenes/Buildings/Hospital.tscn"
var museum = "res://Scenes/Buildings/Museum.tscn"

## Green space and green energy buildings
var lake = "res://Scenes/Buildings/Lake.tscn"
var wind_turbine = "res://Scenes/Buildings/WindTurbine.tscn"
var solar_panel = "res://Scenes/Buildings/SolarPanel.tscn"

## Decorative buildings
var tree = "res://Scenes/Buildings/Tree.tscn"
var bench = "res://Scenes/Buildings/Bench.tscn"
var street_light = "res://Scenes/Buildings/StreetLight.tscn"

## Road
var road = "res://Scenes/Buildings/Road.tscn"


var isBuilding = true
var buildingId = 1

# Building creation
func CreateBuilding(pos: Vector3):
	# Load the building resource
	var building_res = load(medium_house)
	var building = building_res.instantiate()
	
	building.position = pos  # Use 'position' to set the location in 3D
	get_tree().get_root().add_child(building)
