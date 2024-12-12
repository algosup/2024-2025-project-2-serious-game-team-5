extends Control

@onready var popped_up = false

@onready var isBuilding = false
@onready var selected_building = 0
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
@onready var museum_nb:int
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
