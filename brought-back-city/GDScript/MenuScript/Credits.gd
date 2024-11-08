extends Control

func _ready():
	_sceneInit()
	$BackToMenuButton.connect("pressed", self._onPressed.bind(1))
	
# This function will initialize the scene
func _sceneInit():
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.READ)
	var language = file.get_as_text()
	_updateLanguage(language)

# This function will display text, depends on the language input i. i = english, or i = french
func _updateLanguage(i):
	match i:
		"english":
			$BackToMenuButton.text = "Back to Menu"
			$CreditsText.text = "Elone - Good guy"
		"french":
			$BackToMenuButton.text = "Revenir au Menu"
			$CreditsText.text = "Elone - Bon gars"

# This function will take input i, and depends on i value, it will make different action. i = buttons
func _onPressed(i):
	match i:
		1:
			get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
