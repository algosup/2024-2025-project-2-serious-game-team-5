extends Node3D

var mouse_sensitivity := 0.05
var moving_camera_input := Vector3()
var zoom_speed := 5
var mouse = Vector2()
var last_hovered_building = null
const distance = 1000
@onready var player_camera = $Camera3D

func _ready() -> void:
	# Says that the cursor will be confined in the window
	Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)

func _process(_delta: float) -> void:
	# Handle camera movements with WASD keys
	if Input.is_key_pressed(KEY_W):
		translate(Vector3(0, 0, -0.2))
	if Input.is_key_pressed(KEY_S):
		translate(Vector3(0, 0, 0.2))
	if Input.is_key_pressed(KEY_A):
		translate(Vector3(-0.2, 0, 0))
	if Input.is_key_pressed(KEY_D):
		translate(Vector3(0.2, 0, 0))

	# Handle camera zoom with R and F keys
	if Input.is_key_pressed(KEY_T):
		player_camera.size = clamp(player_camera.size - (zoom_speed * 6) * _delta, 5.0, 100.0)
	if Input.is_key_pressed(KEY_G):
		player_camera.size = clamp(player_camera.size + (zoom_speed * 6) * _delta, 5.0, 100.0)

	# Movement using right mouse button
	if Input.is_action_pressed("moving_camera"):
		translate(moving_camera_input)

# This function will handle both camera movement and camera zoom.
func _unhandled_input(event: InputEvent) -> void:
	# Camera movement while holding right mouse button
	if event is InputEventMouseMotion:
		if Input.is_action_pressed("moving_camera") and Input.get_mouse_mode() == Input.MOUSE_MODE_CONFINED:
			moving_camera_input.x = -event.screen_relative.x * mouse_sensitivity
			moving_camera_input.z = -event.screen_relative.y * mouse_sensitivity
		elif Input.is_mouse_button_pressed(MOUSE_BUTTON_MIDDLE):
			player_camera.rotation_degrees.y -= event.screen_relative.x * mouse_sensitivity  # Rotate horizontally
			player_camera.rotation_degrees.x -= event.screen_relative.y * mouse_sensitivity  # Rotate vertically

	# Camera zoom-in (wheel down) and zoom-out (wheel up)
	elif event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP and not(GlobalVariables.popped_up):
			player_camera.size = clamp(player_camera.size - zoom_speed, 5.0, 100.0)
		elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN and not(GlobalVariables.popped_up):
			player_camera.size = clamp(player_camera.size + zoom_speed, 5.0, 100.0)

# This function handles the interactions of the player with left click.            
func _input(event):
	if event is InputEventMouseMotion:
		mouse = event.position
	if event is InputEventMouseButton:
		if Input.is_action_pressed("interact"):
			_get_mouse_pos(mouse)

# This function determines which building is clicked by the player
func _get_mouse_pos(mouse: Vector2):
	var space = get_world_3d().direct_space_state
	var start = get_viewport().get_camera_3d().project_ray_origin(mouse)
	var end = get_viewport().get_camera_3d().project_position(mouse, distance)
	var params = PhysicsRayQueryParameters3D.new()
	params.from = start
	params.to = end
	var result = space.intersect_ray(params)

	# Call the _hover_visible & _hover_hidden functions of Building.gd & Building_2.gd
	if result and result.collider.has_method("_hover_visible"):
		# Will hide the hover of the last hovered building
		if last_hovered_building and last_hovered_building != result.collider:
			last_hovered_building.call("_hover_hidden")
		# It will show the hover of the currently clicked building
		result.collider.call("_hover_visible")
		# Update the last hovered building
		last_hovered_building = result.collider
	else:
		# If no collision is detected it will call _hover_hidden on all Building instances
		for building in get_tree().get_nodes_in_group("buildings"):
			if building.has_method("_hover_hidden"):
				building.call("_hover_hidden")
		# Will hide the hover effect for every building in "buildings" group
		last_hovered_building = null
