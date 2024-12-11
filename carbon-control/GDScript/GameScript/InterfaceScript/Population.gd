extends ColorRect

# Constants
const USER_POPULATION_DATA_FILE_PATH = "user://userPopulationData.dat"
const USER_HAPPINESS_DATA_FILE_PATH = "user://userHappinessData.dat"

# Variables
var is_user_population_exists := FileAccess.file_exists(USER_POPULATION_DATA_FILE_PATH)

@onready var timer: Timer = $DayTimer
@onready var population_label: Label = null

func _ready() -> void:
	_init_game()
	_load_happiness_value()

	# Start the day timer
	if timer:
		timer.timeout.connect(_on_day_timer_timeout)
		timer.start()
	else:
		print("Error: DayTimer node not found!")
		
func set_base_population(new_popu_label: Label) -> void:
	population_label = new_popu_label
	GlobalVariables.population_max = 100
	GlobalVariables.population_value = 100
	display_population()
	
func _on_day_timer_timeout() -> void:
	update_population()
	_save_population_value()  # Save the updated population value

# Load the saved happiness value from the user happiness data file
func _load_happiness_value() -> void:
	if FileAccess.file_exists(USER_HAPPINESS_DATA_FILE_PATH):
		var file := FileAccess.open(USER_HAPPINESS_DATA_FILE_PATH, FileAccess.READ)
		if file:
			var content: String = file.get_as_text().strip_edges()
			GlobalVariables.happiness_value = float(content)  # Assuming the file only contains the happiness value
			file.close()
		else:
			print("Error: Failed to open happiness data file.")

# Save the updated population and max population values to the user population data file
func _save_population_value() -> void:
	var file := FileAccess.open(USER_POPULATION_DATA_FILE_PATH, FileAccess.WRITE)
	if file:
		file.store_string("%d %d" % [GlobalVariables.population_value, GlobalVariables.population_max])
		file.close()
	else:
		print("Error: Failed to open population data file for writing.")

# Update the population value based on happiness
func update_population() -> void:
	if GlobalVariables.population_value < GlobalVariables.population_max:
		var happiness_percentage: float = GlobalVariables.happiness_value / 100.0
		var population_change: int = 0

		if happiness_percentage <= 0.15:
			population_change = -3
		elif happiness_percentage <= 0.30:
			population_change = -2
		elif happiness_percentage <= 0.45:
			population_change = -1
		elif happiness_percentage <= 0.60:
			population_change = 0
		elif happiness_percentage <= 0.70:
			population_change = 1
		elif happiness_percentage <= 0.90:
			population_change = 2
		else:
			population_change = 3

		GlobalVariables.population_value += population_change
		if GlobalVariables.population_value < 0:
			GlobalVariables.population_value = 0
		elif GlobalVariables.population_value > GlobalVariables.population_max:
			GlobalVariables.population_value = GlobalVariables.population_max


	display_population()

# Display the population value
func display_population() -> void:
	if population_label == null :
		print("Error: Population label not found")
		return
	if GlobalVariables != null && GlobalVariables.population_value != null && GlobalVariables.population_max != null:
		population_label.text = str(GlobalVariables.population_value) + " / " + str(GlobalVariables.population_max)
	else:
		population_label.text = "#ERROR"

# Initialize game
func _init_game() -> void:
	if is_user_population_exists:
		_load_population_data()
	else:
		_reset_population_data()

# Check if user data exists
func _load_population_data() -> void:
	var file := FileAccess.open(USER_POPULATION_DATA_FILE_PATH, FileAccess.READ)
	if file:
		var content: String = file.get_as_text().strip_edges()
		var data: Array = content.split(" ")
		if data.size() == 2:
			GlobalVariables.population_value = int(data[0])
			GlobalVariables.population_max = int(data[1])
		else:
			print("Error: User population data corrupted. Resetting to default.")
			_reset_population_data()
		file.close()
	else:
		print("Error: Failed to open user population data file.")

# Reset user data to defaults
func _reset_population_data() -> void:
	GlobalVariables.population_value = 100
	GlobalVariables.population_max = 100
	_save_population_value()

# Save user data
func _save_population_data() -> void:
	var file := FileAccess.open(USER_POPULATION_DATA_FILE_PATH, FileAccess.WRITE)
	if file:
		file.store_string("%d %d" % [GlobalVariables.population_value, GlobalVariables.population_max])
		file.close()
	else:
		print("Error: Failed to save user population data.")
