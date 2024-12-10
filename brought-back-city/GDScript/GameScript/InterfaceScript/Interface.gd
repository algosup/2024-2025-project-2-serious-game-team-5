extends Control

# ConstructionMenuBox speed
@export var menu_size = 0.45
@export var lerp_speed = 0.2

var up_anchor: Vector2
var down_anchor: Vector2
var target_anchor: Vector2

@onready var construction_menu_box = $ConstructionMenu/ConstructionMenuBox

# This function sets up the starting and sliding positions for the ConstructionMenuBox
func _ready() -> void:
	# Default anchor values in case construction_menu_box anchors are null
	var default_down_anchor = Vector2(0.936, 1.068)
	
	# Check and assign anchors from construction_menu_box or use default values
	var down_anchor: Vector2
	if construction_menu_box == null or construction_menu_box.anchor_left == null or construction_menu_box.anchor_right == null:
		down_anchor = default_down_anchor
	else:
		down_anchor = Vector2(construction_menu_box.anchor_left, construction_menu_box.anchor_right)
	
	# Calculate the up_anchor based on menu size
	up_anchor = Vector2(down_anchor.x - menu_size, down_anchor.y - menu_size)
	
	# Initialize target_anchor to down_anchor
	target_anchor = down_anchor


# This function moves the ConstructionMenuBox towards the target position, creating a sliding animation.
func _process(_delta: float) -> void:
	if construction_menu_box == null or construction_menu_box.anchor_left == null or construction_menu_box.anchor_right == null:
		return
	if construction_menu_box.anchor_left != target_anchor.x or construction_menu_box.anchor_right != target_anchor.y:
		construction_menu_box.anchor_left = lerp(construction_menu_box.anchor_left, target_anchor.x, lerp_speed)
		construction_menu_box.anchor_right = lerp(construction_menu_box.anchor_right, target_anchor.y, lerp_speed)

# This function toggles the ConstructionMenuBox between its hidden and visible positions when the button is pressed.
func _on_construction_menu_button_pressed() -> void:
	if not GlobalVariables.popped_up:
		target_anchor = up_anchor
	else:
		target_anchor = down_anchor
	GlobalVariables.popped_up = !GlobalVariables.popped_up
	
