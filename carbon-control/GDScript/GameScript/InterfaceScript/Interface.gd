extends Control

# ConstructionMenuBox speed
@export var menu_size = 0.45
@export var lerp_speed = 0.2

var popped_up = false
var up_anchor: Vector2
var down_anchor: Vector2
var target_anchor: Vector2

@onready var construction_menu_box = $ConstructionMenu/ConstructionMenuBox

# This function sets up the starting and sliding positions for the ConstructionMenuBox
func _ready() -> void:
	down_anchor = Vector2(construction_menu_box.anchor_left, construction_menu_box.anchor_right)
	up_anchor = Vector2(down_anchor.x - menu_size, down_anchor.y - menu_size)
	target_anchor = down_anchor  # Set no movement of the MenuBox at the beginning

# This function moves the ConstructionMenuBox towards the target position, creating a sliding animation.
func _process(_delta: float) -> void:
	if construction_menu_box.anchor_left != target_anchor.x or construction_menu_box.anchor_right != target_anchor.y:
		construction_menu_box.anchor_left = lerp(construction_menu_box.anchor_left, target_anchor.x, lerp_speed)
		construction_menu_box.anchor_right = lerp(construction_menu_box.anchor_right, target_anchor.y, lerp_speed)

# This function toggles the ConstructionMenuBox between its hidden and visible positions when the button is pressed.
func _on_construction_menu_button_pressed() -> void:
	if not popped_up:
		target_anchor = up_anchor
	else:
		target_anchor = down_anchor
	popped_up = !popped_up


func _on_static_body_3d_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	pass # Replace with function body.

func _on_small_house_pressed() -> void:
	BuildingsMgr.selected_building = 1

func _on_medium_house_pressed() -> void:
	BuildingsMgr.selected_building = 2

func _on_large_house_pressed() -> void:
	BuildingsMgr.selected_building = 3

func _on_apartment_pressed() -> void:
	BuildingsMgr.selected_building = 4

func _on_skyscraper_pressed() -> void:
	BuildingsMgr.selected_building = 5

func _on_bookshop_pressed() -> void:
	BuildingsMgr.selected_building = 6

func _on_barber_pressed() -> void:
	BuildingsMgr.selected_building = 7

func _on_bakery_pressed() -> void:
	BuildingsMgr.selected_building = 8

func _on_pharmacy_pressed() -> void:
	BuildingsMgr.selected_building = 9

func _on_hardware_shop_pressed() -> void:
	BuildingsMgr.selected_building = 10

func _on_farm_pressed() -> void:
	BuildingsMgr.selected_building = 11

func _on_casino_pressed() -> void:
	BuildingsMgr.selected_building = 12

func _on_factory_pressed() -> void:
	BuildingsMgr.selected_building = 13

func _on_power_plant_pressed() -> void:
	BuildingsMgr.selected_building = 14

func _on_city_hall_pressed() -> void:
	BuildingsMgr.selected_building = 15

func _on_school_pressed() -> void:
	BuildingsMgr.selected_building = 16

func _on_hospital_pressed() -> void:
	BuildingsMgr.selected_building = 17

func _on_museum_pressed() -> void:
	BuildingsMgr.selected_building = 18

func _on_lake_pressed() -> void:
	BuildingsMgr.selected_building = 19

func _on_wind_turbine_pressed() -> void:
	BuildingsMgr.selected_building = 20

func _on_solar_panel_pressed() -> void:
	BuildingsMgr.selected_building = 21

func _on_tree_pressed() -> void:
	BuildingsMgr.selected_building = 22

func _on_bench_pressed() -> void:
	BuildingsMgr.selected_building = 23

func _on_street_light_pressed() -> void:
	BuildingsMgr.selected_building = 24

func _on_road_pressed() -> void:
	BuildingsMgr.selected_building = 25
