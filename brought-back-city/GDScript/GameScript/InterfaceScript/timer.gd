extends ColorRect

var day_count: int = 1
var year_count: int = 1

@onready var timer = $DayTimer
@onready var day_label = $DayLabel
@onready var year_label = $YearLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	day_label.text = "Day: " + str(day_count)
	year_label.text = "Year: " + str(year_count)
	if timer:
		timer.timeout.connect(_on_day_timer_timeout)
		timer.start()
	else:
		print("No timer!")


func _on_day_timer_timeout() -> void:
	day_count += 1
	if day_count > 365:
		year_count += 1
		day_count = 1
	day_label.text = "Day: " + str(day_count)
	year_label.text = "Year: " + str(year_count)
	
