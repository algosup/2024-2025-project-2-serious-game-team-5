extends Node3D

var mouse_sensitivity := 0.05
var moving_camera_input := Vector3()
var zoom_speed := 10
@onready var player_camera = $Camera3D

func _ready() -> void:
	# Says that the cursor will be confined in the window
	Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)

func _process(_delta: float) -> void:
	# Allow the player to press 'escape' to exit the window
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
	if Input.is_action_pressed("moving_camera"):
		translate(moving_camera_input)
		
# This function will handle both camera movement and camera zoom.
func _unhandled_input(event: InputEvent) -> void:
	# Camera movement while holding right mouse button
	if event is InputEventMouseMotion:
		if Input.is_action_pressed("moving_camera") and Input.get_mouse_mode() == Input.MOUSE_MODE_CONFINED:
			moving_camera_input.x = -event.screen_relative.x * mouse_sensitivity
			moving_camera_input.z = -event.screen_relative.y * mouse_sensitivity
	
	# Camera zoom-in (wheel down) and zoom-out (wheel up)
	if event is InputEventMouseButton:
		if Input.is_action_pressed("zoom_camera_in"):
			player_camera.size = clamp(player_camera.size - zoom_speed, 30.0, 150.0)
		elif Input.is_action_pressed("zoom_camera_out"):
			player_camera.size = clamp(player_camera.size + zoom_speed, 30.0, 150.0)
