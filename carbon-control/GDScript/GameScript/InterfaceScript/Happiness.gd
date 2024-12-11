extends ColorRect

# Constants
const USER_CARBON_DATA_FILE_PATH = "user://userCarbonData.dat"  # Existing carbon data file
const USER_HAPPINESS_DATA_FILE_PATH = "user://userHappinessData.dat"  # New happiness data file

@onready var timer: Timer = $"../DayTimer"
@onready var happiness_bar: ProgressBar = $HappinessBar

# Variables to store loaded data
var carbon_percentage: float = 0.0
var happiness_value: float = 1225.0  # Default starting happiness value

func _ready() -> void:
	# Load the saved carbon percentage and happiness value from the user data files
	_load_carbon_percentage()
	_load_happiness_value()
	
	_display_happiness()

	# Start the day timer
	if timer:
		timer.timeout.connect(_on_day_timer_timeout)
		timer.start()
	else:
		print("Error: DayTimer node not found!")

func _on_day_timer_timeout() -> void:
	update_happiness()
	_save_happiness_value()  # Save the updated happiness value

# Load the saved carbon percentage from the user carbon data file
func _load_carbon_percentage() -> void:
	if FileAccess.file_exists(USER_CARBON_DATA_FILE_PATH):
		var file := FileAccess.open(USER_CARBON_DATA_FILE_PATH, FileAccess.READ)
		if file:
			var content: String = file.get_as_text().strip_edges()
			var data: Array = content.split(" ")
			if data.size() == 2:
				# Load the percentage from the saved file
				carbon_percentage = float(data[1])
			else:
				print("Error: Data corrupted in carbon data file. Resetting to default.")
				carbon_percentage = 0.0
			file.close()
		else:
			print("Error: Failed to open carbon data file.")
	else:
		print("Error: Carbon data file does not exist.")

# Load the saved happiness value from the user happiness data file
func _load_happiness_value() -> void:
	if FileAccess.file_exists(USER_HAPPINESS_DATA_FILE_PATH):
		var file := FileAccess.open(USER_HAPPINESS_DATA_FILE_PATH, FileAccess.READ)
		if file:
			var content: String = file.get_as_text().strip_edges()
			happiness_value = float(content)  # Assuming the file only contains the happiness value
			file.close()
		else:
			print("Error: Failed to open happiness data file.")
	else:
		print("Error: Happiness data file does not exist. Using default value.")

# Save the updated happiness value to the user happiness data file
func _save_happiness_value() -> void:
	var file := FileAccess.open(USER_HAPPINESS_DATA_FILE_PATH, FileAccess.WRITE)
	if file:
		file.store_string(str(happiness_value))  # Save the happiness value as a string
		file.close()
	else:
		print("Error: Failed to save happiness data.")

# Increase or decrease the happiness bar based on the carbon level
func update_happiness() -> void:
	# Adjust happiness based on the loaded carbon percentage
	if carbon_percentage < 30.0:
		happiness_value *= 1.05  # Increase happiness
	elif carbon_percentage < 50.0:
		# No change
		return
	elif carbon_percentage < 70.0:
		happiness_value *= 0.95  # Decrease happiness slightly
	else:
		happiness_value *= 0.9  # Decrease happiness more significantly

	# Clamp the happiness value to be within the [0, 2500] range
	happiness_value = clamp(happiness_value, 0.0, 2500.0)
	_display_happiness()

func _display_happiness() -> void:
	if happiness_bar == null:
		return
	# Update the happiness bar
	happiness_bar.value = happiness_value
