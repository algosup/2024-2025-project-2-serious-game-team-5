extends Control

const USER_BUILDING_DATA_FILE_PATH = "user://userBuildingData.dat"

@onready var destroy_price = 5000

@onready var popped_up = false
@onready var isBuilding = false
@onready var selected_building: int = 0
@onready var building_price = 0
@onready var isDestroying = false

@onready var buildingId = 1
# Variables to store loaded data
@onready var remaining_money: int
@onready var population_value: int
@onready var population_max: int
@onready var carbon_percentage: int
@onready var happiness_value: float
@onready var happiness_bonus: float
@onready var yearly_malus: float
@onready var yearly_bonus: float


# Residential buildings
@onready var small_house_nb: int
@onready var medium_house_nb: int
@onready var large_house_nb: int
@onready var apartment_nb: int
@onready var skyscrapper_nb: int

# Commercial buildings
@onready var bookshop_nb: int
@onready var bakery_nb: int
@onready var barber_shop_nb: int
@onready var pharmacy_nb: int
@onready var hardware_store_nb: int
@onready var farm_nb: int
@onready var casino_nb: int

# Industrial buildings
@onready var factory_nb: int
@onready var recycling_center_nb: int
@onready var power_plant_nb: int
@onready var oil_rafinery_nb: int

# Public buildings
@onready var city_hall_nb: int
@onready var school_nb: int
@onready var museum_nb: int
@onready var hospital_nb: int

# Green spaces and energy
@onready var park_nb: int
@onready var lake_nb: int
@onready var wind_turbine_nb: int
@onready var solar_panel_nb: int

@onready var tree_nb: int
@onready var bench_nb: int
@onready var street_light_nb: int
@onready var road_nb: int

func save_building_data() -> void:
	if FileAccess.file_exists(USER_BUILDING_DATA_FILE_PATH):
		var file := FileAccess.open(USER_BUILDING_DATA_FILE_PATH, FileAccess.WRITE)
		file.store_line(str(small_house_nb))
		file.store_line(str(medium_house_nb))
		file.store_line(str(large_house_nb))
		file.store_line(str(apartment_nb))
		file.store_line(str(skyscrapper_nb))
		file.store_line(str(bookshop_nb))
		file.store_line(str(bakery_nb))
		file.store_line(str(barber_shop_nb))
		file.store_line(str(pharmacy_nb))
		file.store_line(str(hardware_store_nb))
		file.store_line(str(farm_nb))
		file.store_line(str(casino_nb))
		file.store_line(str(factory_nb))
		file.store_line(str(recycling_center_nb))
		file.store_line(str(power_plant_nb))
		file.store_line(str(oil_rafinery_nb))
		file.store_line(str(city_hall_nb))
		file.store_line(str(school_nb))
		file.store_line(str(museum_nb))
		file.store_line(str(hospital_nb))
		file.store_line(str(park_nb))
		file.store_line(str(lake_nb))
		file.store_line(str(wind_turbine_nb))
		file.store_line(str(solar_panel_nb))
		file.store_line(str(tree_nb))
		file.store_line(str(bench_nb))
		file.store_line(str(street_light_nb))
		file.store_line(str(road_nb))
		file.close()
	else:
		print("Error: Failed to save building data.")

func load_building_data() -> void:
	if FileAccess.file_exists(USER_BUILDING_DATA_FILE_PATH):
		var file := FileAccess.open(USER_BUILDING_DATA_FILE_PATH, FileAccess.READ)
		small_house_nb = int(file.get_line())
		medium_house_nb = int(file.get_line())
		large_house_nb = int(file.get_line())
		apartment_nb = int(file.get_line())
		skyscrapper_nb = int(file.get_line())
		bookshop_nb = int(file.get_line())
		bakery_nb = int(file.get_line())
		barber_shop_nb = int(file.get_line())
		pharmacy_nb = int(file.get_line())
		hardware_store_nb = int(file.get_line())
		farm_nb = int(file.get_line())
		casino_nb = int(file.get_line())
		factory_nb = int(file.get_line())
		recycling_center_nb = int(file.get_line())
		power_plant_nb = int(file.get_line())
		oil_rafinery_nb = int(file.get_line())
		city_hall_nb = int(file.get_line())
		school_nb = int(file.get_line())
		museum_nb = int(file.get_line())
		hospital_nb = int(file.get_line())
		park_nb = int(file.get_line())
		lake_nb = int(file.get_line())
		wind_turbine_nb = int(file.get_line())
		solar_panel_nb = int(file.get_line())
		tree_nb = int(file.get_line())
		bench_nb = int(file.get_line())
		street_light_nb = int(file.get_line())
		road_nb = int(file.get_line())
		file.close()
	else:
		print("Error: Failed to open building data file.")



func _init_game() -> void:
	if FileAccess.file_exists(USER_BUILDING_DATA_FILE_PATH):
		load_building_data()
	else:
		_reset_user_data()
		save_building_data()

func _reset_user_data() -> void:
	small_house_nb = 12
	medium_house_nb = 4
	large_house_nb = 2
	apartment_nb = 2
	skyscrapper_nb = 0
	bookshop_nb = 0
	bakery_nb = 1
	barber_shop_nb = 1
	pharmacy_nb = 0
	hardware_store_nb = 0
	farm_nb = 0
	casino_nb = 0
	factory_nb = 0
	recycling_center_nb = 0
	power_plant_nb = 0
	oil_rafinery_nb = 0
	city_hall_nb = 1
	school_nb = 0
	museum_nb = 0
	hospital_nb = 0
	park_nb = 1
	lake_nb = 0
	wind_turbine_nb = 7
	solar_panel_nb = 0
	tree_nb = 5
	bench_nb = 0
	street_light_nb = 0
	road_nb = 55
	save_building_data()
