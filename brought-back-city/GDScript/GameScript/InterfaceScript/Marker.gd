extends StaticBody3D

var marker 

func _ready() :
	marker = get_node("/root/World/Marker")


func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	var posX = round(event_position.x) - 0.5
	var posY = round(event_position.z) - 0.5
	marker.transform.origin = Vector3(posX, 0, posY)
	
	if Input.is_action_just_pressed("left_click"):
		print("Ma GROSSE BITE DE NEEEEEEGRE")
