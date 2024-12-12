extends ColorRect

# Constants
const USER_DATA_FILE_PATH = "user://userCarbonData.dat"

# Variables
var is_user_data_exists := FileAccess.file_exists(USER_DATA_FILE_PATH)


@onready var timer: Timer = $"../DayTimer"
@onready var carbon_bar: ProgressBar = null
@onready var carbon_value: Label = null
func _ready() -> void:
	_init_game()
	update_color()
	
	# Start the day timer
	if timer:
		timer.timeout.connect(_on_day_timer_timeout)
		timer.start()
	else:
		print("Error: DayTimer node not found!")

func _on_day_timer_timeout() -> void:
	
	update_color()
	_save_user_data()

func update_color() -> void:
	if carbon_bar == null :
		return
	
	# Change the color of the carbon bar based on the carbon level
	var percentage = get_percentage()

	if percentage < 0.3:
		carbon_bar.modulate = Color(0, 1, 0, 1)  # Green
	elif percentage < 0.5:
		carbon_bar.modulate = Color(1, 1, 0, 1)  # Yellow
	elif percentage < 0.7:
		carbon_bar.modulate = Color(1, 0.647059, 0, 1)  # Orange
	else:
		carbon_bar.modulate = Color(1, 0, 0, 1)  # Red
	
	if carbon_value == null:
		return
	carbon_value.text = str(carbon_bar.value)  # Convert value to string

func update_carbon() -> void:
	var new_carbon_value: float = GlobalVariables.small_house_nb * 10000
	new_carbon_value += GlobalVariables.medium_house_nb * 20000 * 2
	new_carbon_value += GlobalVariables.large_house_nb * 40000 * 3
	new_carbon_value += GlobalVariables.apartment_nb * 15000 * 35
	new_carbon_value += GlobalVariables.skyscrapper_nb * 100000 * 50
	new_carbon_value += GlobalVariables.bookshop_nb * 50 * 50
	new_carbon_value += GlobalVariables.barber_shop_nb * 40 * 30
	new_carbon_value += GlobalVariables.bakery_nb * 100 * 30
	new_carbon_value += GlobalVariables.pharmacy_nb * 70 * 30
	new_carbon_value += GlobalVariables.hardware_store_nb * 60 * 30
	new_carbon_value += GlobalVariables.farm_nb * 10000 * 15
	new_carbon_value += GlobalVariables.casino_nb * 250 * 500
	new_carbon_value += GlobalVariables.factory_nb * 5000000
	new_carbon_value = new_carbon_value - GlobalVariables.recycling_center_nb * 8000000
	new_carbon_value = new_carbon_value -  GlobalVariables.power_plant_nb * 40000000
	new_carbon_value += GlobalVariables.oil_rafinery_nb * 3000000000
	new_carbon_value += GlobalVariables.city_hall_nb * 150 * 300
	new_carbon_value += GlobalVariables.school_nb * 70 * 300
	new_carbon_value += GlobalVariables.museum_nb * 200 * 500
	new_carbon_value += GlobalVariables.hospital_nb * 300 * 500
	new_carbon_value = new_carbon_value - GlobalVariables.park_nb * 0.6 * 365
	new_carbon_value = new_carbon_value - GlobalVariables.lake_nb * 0.4 * 365
	new_carbon_value = new_carbon_value - GlobalVariables.wind_turbine_nb * 540 * 365
	print("carbon new before solare panel value ", new_carbon_value)
	new_carbon_value = new_carbon_value - GlobalVariables.solar_panel_nb * 2 * 365
	print("carbon new after solare panel value ", new_carbon_value)
	new_carbon_value = new_carbon_value - GlobalVariables.tree_nb * 0.05 * 365
	print("carbon bar value ", carbon_bar.value)
	print("carbon new value ", new_carbon_value)
	
	if carbon_bar != null :
		carbon_bar.value = new_carbon_value
		update_color()
		
func set_base_carbon(new_carbon_bar: ProgressBar, new_carbon_value: Label) -> void:
	carbon_value = new_carbon_value
	carbon_bar = new_carbon_bar

func get_percentage() -> float:
	if carbon_bar == null:
		return 0.0
	carbon_bar.max_value = GlobalVariables.population_value * 3400
	GlobalVariables.carbon_percentage = (carbon_bar.value / carbon_bar.max_value) * 100
	return carbon_bar.value / carbon_bar.max_value

# Initialize game
func _init_game() -> void:
	if is_user_data_exists:
		_load_user_data()
	else:
		_reset_user_data()

# Load user data
func _load_user_data() -> void:
	var file := FileAccess.open(USER_DATA_FILE_PATH, FileAccess.READ)
	if file:
		var content: String = file.get_as_text().strip_edges()
		var data: Array = content.split(" ")
		if data.size() == 2 && carbon_bar != null:
			
			carbon_bar.value = float(data[0])
			var loaded_percentage: float = float(data[1]) / 100.0
			carbon_bar.value = min(loaded_percentage * carbon_bar.max_value, carbon_bar.max_value)
		else:
			print("Error: User data corrupted. Resetting to default.")
			_reset_user_data()
		file.close()
	else:
		print("Error: Failed to open user data file.")

# Reset user data to defaults
func _reset_user_data() -> void:
	if carbon_bar == null :
		return
	carbon_bar.value = 50000.0
	_save_user_data()

# Save user data
func _save_user_data() -> void:
	var percentage = get_percentage() * 100.0  # Convert to percentage (0-100)
	var file := FileAccess.open(USER_DATA_FILE_PATH, FileAccess.WRITE)
	if file:
		file.store_string("%.2f %.2f" % [carbon_bar.value, percentage])
		file.close()
	else:
		print("Error: Failed to save user data.")
