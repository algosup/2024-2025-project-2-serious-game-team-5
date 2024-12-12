extends ColorRect

# Constants
const DAYS_IN_YEAR = 365

# User data file path
const USER_DATA_FILE_PATH = "user://userGameData.dat"

# Variables
var is_user_data_exists := FileAccess.file_exists(USER_DATA_FILE_PATH)

var year_count: int = 1
var day_count: int = 1

@onready var timer: Timer = $DayTimer
@onready var day_label: Label = $DayLabel
@onready var year_label: Label = $YearLabel

func _ready() -> void:
	# Initialize the game
	_init_game()

	# Set initial text for labels
	_update_labels()

	# Start the day timer
	if timer:
		timer.timeout.connect(_on_day_timer_timeout)
		timer.start()
	else:
		print("Error: DayTimer node not found!")

# Timer timeout signal handler
func _on_day_timer_timeout() -> void:
	day_count += 1

	# Handle year transition
	if day_count > DAYS_IN_YEAR:
		year_count += 1
		day_count = 1

	# Update labels and save user data
	_update_labels()
	_save_user_data()

# Initialize game
func _init_game() -> void:
	if is_user_data_exists:
		_load_user_data()
	else:
		_create_user_data()

# Load user data
func _load_user_data() -> void:
	var file := FileAccess.open(USER_DATA_FILE_PATH, FileAccess.READ)
	if file:
		var content: String = file.get_as_text().strip_edges()
		var data: Array = content.split(" ")
		if data.size() == 2:
			year_count = int(data[0])
			day_count = int(data[1])
		else:
			print("Error: User data corrupted. Resetting to default.")
			reset_user_data()
		file.close()
	else:
		print("Error: Failed to open user data file.")

# Create initial user data
func _create_user_data() -> void:
	reset_user_data()

# Reset user data to defaults
func reset_user_data() -> void:
	year_count = 1
	day_count = 1
	_save_user_data()

# Save user data
func _save_user_data() -> void:
	var file := FileAccess.open(USER_DATA_FILE_PATH, FileAccess.WRITE)
	if file:
		file.store_string("%d %d" % [year_count, day_count])
		file.close()
	else:
		print("Error: Failed to save user data.")

# Update UI labels
# Updates the UI labels for day and year
func _update_labels() -> void:
	# Ensure `day_label` and `year_label` are valid nodes
	if day_label and year_label:
		day_label.text = "Day: %d" % day_count
		year_label.text = "Year: %d" % year_count
	else:
		print("Error: day_label or year_label is not initialized properly.")
		
