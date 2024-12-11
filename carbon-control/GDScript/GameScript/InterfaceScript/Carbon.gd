extends ColorRect

# Constants
const USER_DATA_FILE_PATH = "user://userCarbonData.dat"

# Variables
var is_user_data_exists := FileAccess.file_exists(USER_DATA_FILE_PATH)

@onready var timer: Timer = $"../DayTimer"
@onready var carbon_bar: ProgressBar = $Co2Bar
@onready var carbon_value: Label = $CarbonLabel

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
		
	carbon_value.text = str(carbon_bar.value)  # Convert value to string

func get_percentage() -> float:
	if carbon_bar == null:
		return 0.0
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
