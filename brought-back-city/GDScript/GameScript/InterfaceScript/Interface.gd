extends Control

# ConstructionMenuBox speed
@export var menu_size = 0.45
@export var lerp_speed = 0.2

var popped_up = false
var up_anchor: Vector2
var down_anchor: Vector2
var target_anchor: Vector2

@onready var construction_menu_box = $ConstructionMenu/ConstructionMenuBox

# This function sets up the starting and sliding positions for the ConstructionMenuBox
func _ready() -> void:
	down_anchor = Vector2(construction_menu_box.anchor_left, construction_menu_box.anchor_right)
	up_anchor = Vector2(down_anchor.x - menu_size, down_anchor.y - menu_size)
	target_anchor = down_anchor  # Set no movement of the MenuBox at the beginning

# This function moves the ConstructionMenuBox towards the target position, creating a sliding animation.
func _process(_delta: float) -> void:
	if construction_menu_box.anchor_left != target_anchor.x or construction_menu_box.anchor_right != target_anchor.y:
		construction_menu_box.anchor_left = lerp(construction_menu_box.anchor_left, target_anchor.x, lerp_speed)
		construction_menu_box.anchor_right = lerp(construction_menu_box.anchor_right, target_anchor.y, lerp_speed)

# This function toggles the ConstructionMenuBox between its hidden and visible positions when the button is pressed.
func _on_construction_menu_button_pressed() -> void:
	if not popped_up:
		target_anchor = up_anchor
	else:
		target_anchor = down_anchor
	popped_up = !popped_up


func _on_static_body_3d_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	pass # Replace with function body.
