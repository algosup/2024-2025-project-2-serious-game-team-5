extends Control

func _ready():
	_sceneInit()
	$BackToMenuButton.connect("pressed", self._onPressed.bind(1))
	
func _sceneInit():
	var file = FileAccess.open("user://userLanguage.dat", FileAccess.READ)
	var language = file.get_as_text()
	_updateLanguage(language)

func _updateLanguage(i):
	match i:
		"english":
			$BackToMenuButton.text = "Back to Menu"
			$CreditsText.text = "Elone - Good guy"
		"french":
			$BackToMenuButton.text = "Revenir au Menu"
			$CreditsText.text = "Elone - Bon gars"

func _onPressed(i):
	match i:
		1:
			get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
