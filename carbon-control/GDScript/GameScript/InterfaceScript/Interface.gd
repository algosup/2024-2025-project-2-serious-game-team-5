extends Control


# ConstructionMenuBox speed
@export var menu_size = 0.45
@export var lerp_speed = 0.2

var popped_up = false
var up_anchor: Vector2
var down_anchor: Vector2
var target_anchor: Vector2

@onready var construction_menu_box = $ConstructionMenu/ConstructionMenuBox
@onready var money_label = $MoneyBackground/MoneyLabel
@onready var population_label = $Population/PopulationLabel


# This function sets up the starting and sliding positions for the ConstructionMenuBox
func _ready() -> void:
	down_anchor = Vector2(construction_menu_box.anchor_left, construction_menu_box.anchor_right)
	up_anchor = Vector2(down_anchor.x - menu_size, down_anchor.y - menu_size)
	target_anchor = down_anchor # Set no movement of the MenuBox at the beginning
	GlobalMoney.set_base_money(money_label)
	GlobalPopulation.set_base_population(population_label)

# This function moves the ConstructionMenuBox towards the target position, creating a sliding animation.
func _process(_delta: float) -> void:
	if construction_menu_box.anchor_left != target_anchor.x or construction_menu_box.anchor_right != target_anchor.y:
		construction_menu_box.anchor_left = lerp(construction_menu_box.anchor_left, target_anchor.x, lerp_speed)
		construction_menu_box.anchor_right = lerp(construction_menu_box.anchor_right, target_anchor.y, lerp_speed)

# This function toggles the ConstructionMenuBox between its hidden and visible positions when the button is pressed.
func _on_construction_menu_button_pressed() -> void:
	if not popped_up:
		target_anchor = up_anchor
		GlobalVariables.isBuilding = true
	else:
		target_anchor = down_anchor
		GlobalVariables.isBuilding = false
		GlobalVariables.selected_building = 0
	popped_up = !popped_up


func _on_static_body_3d_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	pass # Replace with function body.

func _on_small_house_pressed() -> void:
	GlobalVariables.selected_building = 1
	GlobalVariables.building_price = 28000

func _on_medium_house_pressed() -> void:
	GlobalVariables.selected_building = 2
	GlobalVariables.building_price = 60000

func _on_large_house_pressed() -> void:
	GlobalVariables.selected_building = 3
	GlobalVariables.building_price = 84000

func _on_apartment_pressed() -> void:
	GlobalVariables.selected_building = 4
	GlobalVariables.building_price = 1320000

func _on_skyscraper_pressed() -> void:
	GlobalVariables.selected_building = 5
	GlobalVariables.building_price = 7040000

func _on_bookshop_pressed() -> void:
	GlobalVariables.selected_building = 6
	GlobalVariables.building_price = 40000

func _on_barber_pressed() -> void:
	GlobalVariables.selected_building = 7
	GlobalVariables.building_price = 60000

func _on_bakery_pressed() -> void:
	GlobalVariables.selected_building = 8
	GlobalVariables.building_price = 80000

func _on_pharmacy_pressed() -> void:
	GlobalVariables.selected_building = 9
	GlobalVariables.building_price = 120000

func _on_hardware_shop_pressed() -> void:
	GlobalVariables.selected_building = 10
	GlobalVariables.building_price = 200000

func _on_farm_pressed() -> void:
	GlobalVariables.selected_building = 11
	GlobalVariables.building_price = 1200000

func _on_casino_pressed() -> void:
	GlobalVariables.selected_building = 12
	GlobalVariables.building_price = 3000000

func _on_factory_pressed() -> void:
	GlobalVariables.selected_building = 13
	GlobalVariables.building_price = 400000

func _on_power_plant_pressed() -> void:
	GlobalVariables.selected_building = 14
	GlobalVariables.building_price = 3000000

func _on_city_hall_pressed() -> void:
	GlobalVariables.selected_building = 15
	GlobalVariables.building_price = 0

func _on_school_pressed() -> void:
	GlobalVariables.selected_building = 16
	GlobalVariables.building_price = 200000

func _on_hospital_pressed() -> void:
	GlobalVariables.selected_building = 17
	GlobalVariables.building_price = 400000

func _on_museum_pressed() -> void:
	GlobalVariables.selected_building = 18
	GlobalVariables.building_price = 800000

func _on_lake_pressed() -> void:
	GlobalVariables.selected_building = 19
	GlobalVariables.building_price = 80000

func _on_wind_turbine_pressed() -> void:
	GlobalVariables.selected_building = 20
	GlobalVariables.building_price = 360000

func _on_solar_panel_pressed() -> void:
	GlobalVariables.selected_building = 21
	GlobalVariables.building_price = 600000

func _on_tree_pressed() -> void:
	GlobalVariables.selected_building = 22
	GlobalVariables.building_price = 1000

func _on_bench_pressed() -> void:
	GlobalVariables.selected_building = 23
	GlobalVariables.building_price = 1000

func _on_street_light_pressed() -> void:
	GlobalVariables.isBuilding = false
	GlobalVariables.selected_building = 0
	GlobalVariables.isDestroying = true

func _on_road_pressed() -> void:
	GlobalVariables.selected_building = 24
	GlobalVariables.building_price = 500
