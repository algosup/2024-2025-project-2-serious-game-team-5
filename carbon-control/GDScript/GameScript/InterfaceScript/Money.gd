extends ColorRect

const base_money = 100000

var money_label: Label = null

func set_base_money(new_money_label: Label) -> void:
	money_label = new_money_label
	GlobalVariables.remaining_money = base_money
	money_label.text = _format_money(GlobalVariables.remaining_money)
	
func add_money(to_add: int) -> void:
	GlobalVariables.remaining_money += to_add
	money_label.text = _format_money(GlobalVariables.remaining_money)

func rem_money(to_rem: int) -> void:
	GlobalVariables.remaining_money -= to_rem
	money_label.text = _format_money(GlobalVariables.remaining_money)

func _format_money(money: int) -> String:
	var num_str = str(money)
	var formatted_str = ""
	
	# Start from the end of the string and add a space every three digits
	for i in range(len(num_str)):
		if i > 0 and i % 3 == 0:
			formatted_str = " " + formatted_str
		formatted_str = num_str[len(num_str) - i - 1] + formatted_str
	
	return formatted_str + " $"
