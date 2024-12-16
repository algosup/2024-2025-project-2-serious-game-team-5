extends Control

var userDataFile = FileAccess.file_exists("user://userLanguage.dat")
var userSettingsFile = FileAccess.file_exists("user://settings.json")

@onready var play_button: Button = $OverallMarginContainer/ComponentsMarginContainer/ButtonMarginContainer/BoxContainerButton/PlayButton	
@onready var leave_button: Button = $OverallMarginContainer/ComponentsMarginContainer/ButtonMarginContainer/BoxContainerButton/LeaveButton
@onready var credits_button: Button = $OverallMarginContainer/ComponentsMarginContainer/ButtonMarginContainer/BoxContainerButton/CreditsButton
@onready var settings_button: Button = $OverallMarginContainer/ComponentsMarginContainer/ButtonMarginContainer/BoxContainerButton/SettingsButton
@onready var newgame_button: Button = $OverallMarginContainer/ComponentsMarginContainer/ButtonMarginContainer/BoxContainerButton/NewGameButton

func _ready():
	_gameInit()
	play_button.connect("pressed", self._onPressed.bind(1))
	newgame_button.connect("pressed", self._onPressed.bind(5))
	settings_button.connect("pressed", self._onPressed.bind(3))
	credits_button.connect("pressed", self._onPressed.bind(4))
	leave_button.connect("pressed", self._onPressed.bind(2))

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
		print("")
	else:
		_createUserSettings()
		
	print("here")
	# Setup the text language
	match language:
		"english":
			play_button.text = "Play"
			leave_button.text = "Leave the game"
			settings_button.text = "Settings"
			credits_button.text = "Credits"
			newgame_button.text = "New Game"
		"french":
			play_button.text = "Jouer"
			leave_button.text = "Quitter le jeu"
			settings_button.text = "Paramètres"
			credits_button.text = "Crédits"
			newgame_button.text = "Nouvelle Partie"

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
			get_tree().change_scene_to_file("res://Scenes/Starter.tscn")

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
	
