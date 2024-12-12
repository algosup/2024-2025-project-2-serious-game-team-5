extends Control

@onready var popped_up = false

@onready var isBuilding = false
@onready var selected_building = 0
@onready var building_price = 0
@onready var isDestroying = false

@onready var buildingId = 1
# Variables to store loaded data
@onready var remaining_money: int = 0
@onready var population_value: int = 100
@onready var population_max: int = 100
@onready var happiness_value: float = 50.00

# Residential buildings
@onready var small_house_nb: int = 0
@onready var medium_house_nb: int = 0
@onready var large_house_nb: int = 0
@onready var apartment_nb: int = 0
@onready var skyscrapper_nb: int = 0

# Commercial buildings
@onready var bookshop_nb: int = 0
@onready var bakery_nb: int = 0
@onready var barber_shop_nb: int = 0
@onready var pharmacy_nb: int = 0
@onready var hardware_store_nb: int = 0
@onready var farm_nb: int = 0
@onready var casino_nb: int = 0

# Industrial buildings
@onready var factory_nb: int = 0
@onready var recycling_center_nb: int = 0
@onready var power_plant_nb: int = 0
@onready var oil_rafinery_nb: int = 0

# Public buildings
@onready var city_hall_nb: int = 1
@onready var school_nb: int = 0
@onready var museum_nb: int = 0
@onready var hospital_nb: int = 0

# Green spaces and energy
@onready var park_nb: int = 0
@onready var lake_nb: int = 0
@onready var wind_turbine_nb: int = 0
@onready var solar_panel_nb: int = 0

@onready var tree_nb: int = 0
@onready var bench_nb: int = 0
@onready var street_light_nb: int = 0
@onready var road_nb: int = 0
