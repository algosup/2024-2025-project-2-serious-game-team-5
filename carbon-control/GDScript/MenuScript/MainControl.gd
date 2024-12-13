extends Control

var userDataFile = FileAccess.file_exists("user://userLanguage.dat")
var userSettingsFile = FileAccess.file_exists("user://settings.json")

func _ready():
	_gameInit()
	$OverallMarginContainer/ComponentsMarginContainer/ButtonMarginContainer/BoxContainerButton/PlayButton.connect("pressed", self._onPressed.bind(1))
	$OverallMarginContainer/ComponentsMarginContainer/ButtonMarginContainer/BoxContainerButton/NewGameButton.connect("pressed", self._onPressed.bind(5))
	$OverallMarginContainer/ComponentsMarginContainer/ButtonMarginContainer/BoxContainerButton/SettingsButton.connect("pressed", self._onPressed.bind(3))
	$OverallMarginContainer/ComponentsMarginContainer/ButtonMarginContainer/BoxContainerButton/CreditsButton.connect("pressed", self._onPressed.bind(4))
	$OverallMarginContainer/ComponentsMarginContainer/ButtonMarginContainer/BoxContainerButton/LeaveButton.connect("pressed", self._onPressed.bind(2))
	
func _gameInit():
	var language
	# Check if user data file exist
	if userDataFile:
		language = _loadUserData()
	else:
		_createUserData()
		language = _loadUserData()
	
	# Check if settings file exist
	if userSettingsFile:
		return
	else:
		_createUserSettings()
		
	# Setup the text language
	match language:
		"english":
			$PlayButton.text = "Play"
			$LeaveButton.text = "Leave the game"
			$SettingsButton.text = "Settings"
			$CreditsButton.text = "Credits"
			$WelcomeText.text = "Welcome to Brought Back City"
		"french":
			$PlayButton.text = "Jouer"
			$LeaveButton.text = "Quitter le jeu"
			$SettingsButton.text = "Paramètres"
			$CreditsButton.text = "Crédits"
			$WelcomeText.text = "Bienvenue sur Brought Back City"

# This function take input i, and depends on i value, it will make different actions. i = buttons
func _onPressed(i):
	match i:
		1: # Starting the game function
			get_tree().change_scene_to_file("res://Scenes/SavedGame.tscn")
		2: # Exiting the game function
			get_tree().quit() 
		3: # Switch to Settings menu
			get_tree().change_scene_to_file("res://Scenes/SettingsMenu.tscn")
		4: # Switch to Credits
			get_tree().change_scene_to_file("res://Scenes/Credits.tscn")
		5: # Remove previous save and play
			GlobalTimer.reset_user_data()
			get_tree().change_scene_to_file("res://Scenes/World.tscn")

# This function will load the userLanguage
func _loadUserData():
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.READ)
	var content = file.get_as_text()
	return content

# This function will create a default userLanguage file, with english as default value
func _createUserData():
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.WRITE)
	file.store_string("english")

# This function will create the settings file, with default value
func _createUserSettings():
	var file = FileAccess.open("user://settings.json", FileAccess.WRITE)
	var default_settings = {
		"right": "D",
		"left": "A",
		"forward": "W",
		"backward": "S"
	}
	
	file.store_string(JSON.stringify(default_settings))
	print("File created successfully")
	file.close
