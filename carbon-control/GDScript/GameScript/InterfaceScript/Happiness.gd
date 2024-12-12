extends ColorRect

# Constants
const USER_CARBON_DATA_FILE_PATH = "user://userCarbonData.dat"  # Existing carbon data file
const USER_HAPPINESS_DATA_FILE_PATH = "user://userHappinessData.dat"  # New happiness data file

@onready var timer: Timer = $"../DayTimer"
@onready var happiness_bar: ProgressBar = null
@onready var happiness_value: Label = null
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

func set_base_happyness(new_happiness_bar: ProgressBar, new_happiness_value: Label) -> void:
	happiness_bar = new_happiness_bar
	happiness_value = new_happiness_value
	_load_happiness_value()
	update_happiness()
	

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
				GlobalVariables.carbon_percentage = float(data[1])
			else:
				print("Error: Data corrupted in carbon data file. Resetting to default.")
				GlobalVariables.carbon_percentage = 0.0
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
			GlobalVariables.happiness_value = float(content)
			file.close()
		else:
			print("Error: Failed to open happiness data file.")
			GlobalVariables.happiness_value = 50
	else:
		print("Error: Happiness data file does not exist.")
		GlobalVariables.happiness_value = 50

# Save the updated happiness value to the user happiness data file
func _save_happiness_value() -> void:
	var file := FileAccess.open(USER_HAPPINESS_DATA_FILE_PATH, FileAccess.WRITE)
	if file:
		file.store_string(str(GlobalVariables.happiness_value))  # Save the happiness value as a string
		file.close()
	else:
		print("Error: Failed to save happiness data.")

func reset_happiness() -> void:
	GlobalVariables.happiness_value = 50
	_display_happiness()
	_save_happiness_value()

# Increase or decrease the happiness bar based on the carbon level
func update_happiness() -> void:
	
	if GlobalVariables.happiness_value < 10:
		GlobalVariables.happiness_value = 10
	
	# Adjust happiness based on the loaded carbon percentage
	if GlobalVariables.carbon_percentage < 30.0:
		GlobalVariables.happiness_value += GlobalVariables.happiness_value * 0.15
	elif GlobalVariables.carbon_percentage < 50.0:
		GlobalVariables.happiness_value += GlobalVariables.happiness_value * 0.05
	elif GlobalVariables.carbon_percentage < 70.0:
		GlobalVariables.happiness_value -= GlobalVariables.happiness_value * 0.1
	else:
		GlobalVariables.happiness_value -= GlobalVariables.happiness_value * 0.3
		
	GlobalVariables.happiness_value += (GlobalVariables.happiness_value * (GlobalVariables.happiness_bonus / 300))
	# Clamp the happiness value to be within the [0, 2500] range
	GlobalVariables.happiness_value = clamp(GlobalVariables.happiness_value, 0.0, 100.0)
	GlobalVariables.happiness_value = round(GlobalVariables.happiness_value)
	_display_happiness()
	_save_happiness_value()

func _display_happiness() -> void:
	if happiness_bar == null:
		return
	# Update the happiness bar
	happiness_bar.value = GlobalVariables.happiness_value
