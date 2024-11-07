extends Control

var userDataFile = FileAccess.file_exists("user://userLanguage.dat")

func _ready():
	_gameInit()
	$PlayButton.connect("pressed", self._onPressed.bind(1))
	$LeaveButton.connect("pressed", self._onPressed.bind(2))
	$SettingsButton.connect("pressed", self._onPressed.bind(3))
	$CreditsButton.connect("pressed", self._onPressed.bind(4))

func _gameInit():
	var language
	# Check if user data file exist
	if userDataFile:
		language = _loadUserData()
	else:
		_createUserData()
		language = _loadUserData()
		
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

func _onPressed(i):
	match i:
		1: # Starting the game function
			print("Game Started") 
		2: # Exiting the game function
			get_tree().quit() 
		3: # Switch to Settings menu
			get_tree().change_scene_to_file("res://Scenes/SettingsMenu.tscn")
		4: # Switch to Credits
			get_tree().change_scene_to_file("res://Scenes/Credits.tscn")

func _loadUserData():
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.READ)
	var content = file.get_as_text()
	return content

func _createUserData():
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.WRITE)
	file.store_string("english")
