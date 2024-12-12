extends ColorRect
const USER_MONEY_DATA_FILE_PATH = "user://userMoneyData.dat"

const base_money = 500000

var money_label: Label = null

func set_base_money(new_money_label: Label) -> void:
	money_label = new_money_label
	GlobalVariables.remaining_money = base_money
	_load_money()
	money_label.text = _format_money(GlobalVariables.remaining_money)
	
func add_money(to_add: int) -> void:
	GlobalVariables.remaining_money += to_add
	money_label.text = _format_money(GlobalVariables.remaining_money)
	_save_money()

func rem_money(to_rem: int) -> void:
	GlobalVariables.remaining_money -= to_rem
	money_label.text = _format_money(GlobalVariables.remaining_money)
	_save_money()

func _format_money(money: int) -> String:
	var num_str = str(money)
	var formatted_str = ""
	
	# Start from the end of the string and add a space every three digits
	for i in range(len(num_str)):
		if i > 0 and i % 3 == 0:
			formatted_str = " " + formatted_str
		formatted_str = num_str[len(num_str) - i - 1] + formatted_str
	
	return formatted_str + " $"

func _save_money() -> void:
	var file := FileAccess.open(USER_MONEY_DATA_FILE_PATH, FileAccess.WRITE)
	if file:
		file.store_string(str(GlobalVariables.remaining_money))
		file.close()
	else:
		print("Error: Failed to save money data.")

func reset_money() -> void:
	if money_label == null:
		return
	GlobalVariables.remaining_money = base_money
	money_label.text = _format_money(GlobalVariables.remaining_money)
	_save_money()

func _load_money() -> void:
	if FileAccess.file_exists(USER_MONEY_DATA_FILE_PATH):
		var file := FileAccess.open(USER_MONEY_DATA_FILE_PATH, FileAccess.READ)
		if file:
			var content: String = file.get_as_text().strip_edges()
			GlobalVariables.remaining_money = int(content)
			money_label.text = _format_money(GlobalVariables.remaining_money)
			file.close()
		else:
			print("Error: Failed to open money data file.")
	else:
		print("Error: Money data file does not exist.")
		GlobalVariables.remaining_money = base_money
		money_label.text = _format_money(GlobalVariables.remaining_money)
