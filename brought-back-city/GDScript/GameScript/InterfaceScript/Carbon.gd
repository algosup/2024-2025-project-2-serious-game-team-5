extends ColorRect

@onready var timer: Timer = $"../DayTimer"
@onready var carbon_bar: ProgressBar = $Co2Bar
@onready var carbon_value: Label = $CarbonLabel

func _ready() -> void:
	update_color()
	
	# Start the day timer
	if timer:
		timer.timeout.connect(_on_day_timer_timeout)
		timer.start()
	else:
		print("Error: DayTimer node not found!")

func _on_day_timer_timeout() -> void:
	update_color()
	
func update_color() -> void:
	# Change the color of the carbon bar based on the carbon level: Green, Yellow, Orange and Red based on < 30%; 31-50%; 51-70%; > 70%
	var percentage := carbon_bar.value / carbon_bar.max_value

	if percentage < 0.3:
		carbon_bar.modulate = Color(0, 1, 0, 1)
	elif percentage < 0.5:
		carbon_bar.modulate = Color(1, 1, 0, 1)
	elif percentage < 0.7:
		carbon_bar.modulate = Color(1, 0.647059, 0, 1)
	else:
		carbon_bar.modulate = Color(1, 0, 0, 1) 
		
	carbon_value.text = str(carbon_bar.value)  # Convert value to string
