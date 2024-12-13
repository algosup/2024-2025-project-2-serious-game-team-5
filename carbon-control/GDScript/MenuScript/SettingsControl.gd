extends Control

var settings_data = {}
var focused_element = 0

func _ready(): # Scene initialization
	_sceneInit()
	# One of the buttons is pressed ?
	$BackToMenuButton.connect("pressed", self._onPressed.bind(1))
	$LanguageButton.connect("pressed", self._onPressed.bind(2))
	
	# A line has just taken the focus ?
	$ForwardLine.connect("focus_entered", self._onFocus.bind(1))
	$BackwardLine.connect("focus_entered", self._onFocus.bind(2))
	$RightLine.connect("focus_entered", self._onFocus.bind(3))
	$LeftLine.connect("focus_entered", self._onFocus.bind(4))

func _sceneInit():
	# Here, we already know that the file exists, as it is initialized in MainControl.gd
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.READ)
	var language = file.get_as_text()
	# Text is displayed according to language
	_updateLanguage(language)
	# Keys are displayed according to Settings.json file
	_loadKey()
	
func _onPressed(i):
	match i:
		1: # Switch to the Main Menu
			get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
		2: # Switching Language
			_switchLanguage()

# This function will put the focus to one of the element. Then, the function _input will handle it
func _onFocus(i): 
	focused_element = i;
	
# This function will check if the given key is already used in any of the lines. Will be used in the _input function
func _is_key_used(key):
	return key == $ForwardLine.text or key == $BackwardLine.text or key == $RightLine.text or key == $LeftLine.text

# This function is handled directly by Godot. When there is an input event, it will handle it depends on our code
func _input(event):
	if((event is InputEventKey and event.pressed) and (event.unicode >= 32 and event.unicode <= 126)):
		var new_key = event.as_text()
		
		if _is_key_used(new_key):
		# Erase the previous key if you put the same one in another line
			if focused_element != 0:
				if new_key == $ForwardLine.text:
					$ForwardLine.text = ""
				elif new_key == $BackwardLine.text:
					$BackwardLine.text = ""
				elif new_key == $RightLine.text:
					$RightLine.text = ""
				elif new_key == $LeftLine.text:
					$LeftLine.text = ""
				
				$KeyErrorText.visible = true
				return
		else:
			$KeyErrorText.visible = false
		match focused_element:
			1:
				$ForwardLine.text = event.as_text()
				$ForwardLine.release_focus()
				_editSettingsFile("forward", event.as_text())
				focused_element = 0;
			2:
				$BackwardLine.text = event.as_text()
				$BackwardLine.release_focus()
				_editSettingsFile("backward", event.as_text())
				focused_element = 0;
			3:
				$RightLine.text = event.as_text()
				$RightLine.release_focus()
				_editSettingsFile("right", event.as_text())
				focused_element = 0;
			4:
				$LeftLine.text = event.as_text()
				$LeftLine.release_focus()
				_editSettingsFile("left", event.as_text())
				focused_element = 0;
	else:
		return

# This function edit the settings.json file, with the new entry
func _editSettingsFile(i, e):
	var file = FileAccess.get_file_as_string("user://settings.json")
	var file_parse = JSON.parse_string(file)
	var data = file_parse
	
# Remove any existing key bindings that match the new key
	for key in data.keys():
		if data[key] == e:
			data[key] = ""
	
	data[i] = e
	
	file = FileAccess.open("user://settings.json", FileAccess.WRITE)
	file.store_string(JSON.stringify(data, "", true))
	file.close()

# This function handle when the LanguageButton is pressed, and will call _setNewLanguage and _updateLanguage function
func _switchLanguage():
	var language
	language = _getLanguage()
	match language:
		"english":
			_setNewLanguage("french")
			_updateLanguage("french")
		"french":
			_setNewLanguage("english")
			_updateLanguage("english")

# This function get the Language of the user, and it will be useful to print the text in French or English
func _getLanguage():
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.READ)
	var content = file.get_as_text()
	return content

# This function edit the userLanguage.dat file, and switch language to input i. i = english, or i = french
func _setNewLanguage(i):
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.WRITE)
	file.store_string(i)
	file.close()
	
# Because this is the only scene that can handle the Language switch, we need to have this function to update the language in real time. For the other scenes, when the scene will load, we will directly have the language and set the text
func _updateLanguage(i):
	match i:
		"english":
			$BackToMenuButton.text = "Back to Menu"
			$SettingsText.text = "Settings Menu"
			$ForwardText.text = "Forward"
			$BackwardText.text = "Backward"
			$LeftText.text = "Left"
			$RightText.text = "Right"
			$LanguageButton.text = "English Version"
			$KeyErrorText.text = "This key is already used, press the same key again."
		"french":
			$BackToMenuButton.text = "Revenir au Menu"
			$SettingsText.text = "Paramètres"
			$ForwardText.text = "Avancer"
			$BackwardText.text = "Reculer"
			$LeftText.text = "Gauche"
			$RightText.text = "Droite"
			$LanguageButton.text = "Version Française"
			$KeyErrorText.text = "Cette touche est déjà utilisée, appuyez à nouveau sur la même touche."

# This function load keys from the settings.json file, and display them on the LineEdit (node) children
func _loadKey():
	var file = FileAccess.get_file_as_string("user://settings.json")
	var file_parse = JSON.parse_string(file)
	settings_data = file_parse
	
	$RightLine.text = settings_data["right"]
	$LeftLine.text = settings_data["left"]
	$ForwardLine.text = settings_data["forward"]
	$BackwardLine.text = settings_data["backward"]
