extends Control

func _ready():
	_sceneInit()
	$BackToMenuButton.connect("pressed", self._onPressed.bind(1))
	$LanguageButton.connect("pressed", self._onPressed.bind(2))

func _sceneInit():
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.READ)
	var language = file.get_as_text()
	_updateLanguage(language)
	
func _onPressed(i):
	match i:
		1: # Switch to the Main Menu
			get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
		2: # Switching Language
			_switchLanguage()

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
	
func _getLanguage():
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.READ)
	var content = file.get_as_text()
	return content

func _setNewLanguage(i):
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.WRITE)
	file.store_string(i)
	file.close()
	
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
		"french":
			$BackToMenuButton.text = "Revenir au Menu"
			$SettingsText.text = "Paramètres"
			$ForwardText.text = "Avancer"
			$BackwardText.text = "Reculer"
			$LeftText.text = "Gauche"
			$RightText.text = "Droite"
			$LanguageButton.text = "Version Française"
