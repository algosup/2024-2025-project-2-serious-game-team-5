# Technical Specification

## Table of Contents
- [Technical Specification](#technical-specification)
	- [Table of Contents](#table-of-contents)
	- [1. Introduction](#1-introduction)
	- [2. Project Overview](#2-project-overview)
	- [3. File Architecture](#3-file-architecture)
	- [4. Requirements](#4-requirements)
	- [5. Environment Development](#5-environment-development)
		- [5.1 Game Engine](#51-game-engine)
		- [5.2 GDScript](#52-gdscript)
		- [5.3 Hardware and System Minimal Requirement](#53-hardware-and-system-minimal-requirement)
	- [6. Implementation](#6-implementation)
		- [6.1 Player Interaction and Camera Control](#61-player-interaction-and-camera-control)
			- [Variables and Constants](#variables-and-constants)
			- [Ready Function](#ready-function)
			- [Process Function](#process-function)
			- [Unhandled Input Function](#unhandled-input-function)
			- [Input Function](#input-function)
			- [Get Mouse Position Function](#get-mouse-position-function)
		- [6.2 Main Control and User Interface](#62-main-control-and-user-interface)
			- [Variables](#variables)
			- [Ready Function](#ready-function-1)
			- [Game Initialization](#game-initialization)
			- [Button Press Handling](#button-press-handling)
			- [Load User Data](#load-user-data)
			- [Create User Data](#create-user-data)
			- [Create User Settings](#create-user-settings)
		- [6.3 Building Interaction](#63-building-interaction)
			- [Variables](#variables-1)
			- [Ready Function](#ready-function-2)
			- [Hover Visible Function](#hover-visible-function)
			- [Hover Hidden Function](#hover-hidden-function)
	- [7. Deployment](#7-deployment)
	- [8. Glossary](#8-glossary)

## 1. Introduction

This project is a [serious game](#8-glossary) on [climate change](#8-glossary) named ***Carbon Control***.

## 2. Project Overview

***Carbon Control*** is a 2D [isometric view](#8-glossary), construction and management simulation, [city-building](#8-glossary), serious game on the game engine [Godot](#glossary) v4.3 .

The goal of the game is to build a city as a mayor with four resources to manage, CO₂ level, population, happiness and money.

The mayor has CO₂ level objective and people to satify for this mandate.

The game end if 10 years in game time was spend (12 hours real time).

The player need to take in consideration of the four resources, if the happiness reach zero or CO₂ level is too high, result to a game over.

## 3. File Architecture

```

📁Carbon-Control
|
|
|____ 📁 Src
|     |
|     |____ 📁 .godot
|     |
|     |____ 📁 addons (💻)
|     |
|     |____ 📁 GDScript
|     |     |
|     |     |____ 📁 CharacterScript (💻)
|     |
|     |     |____ 📁 GameScript(💻)
|     |
|     |     |____ 📁 MenuScript(💻)
|     |
|     |____ 📁 Scene 
|     |     |
|     |     |____ 🎬 Building.tscn 
|     |
|     |     |____ 🎬 Credit.tscn 
|     |
|     |     |____ 🎬 Interface.tscn 
|     |
|     |     |____ 🎬MainMenu.tscn 
|     |
|     |     |____ 🎬 Player.tscn 
|     |
|     |     |____ 🎬 Setting.tscn 
|     |
|     |     |____ 🎬 World.tscn 
|     |
|     |____ 📁Asset(📦)
|     |
|     |____ ⚙️ project.godot
|
|
|____ 📁Documents
|     |
|     |
|     |____ 📁FunctionalSpecifications
|     |     |
|     |     |
|     |     |____ img📁(📁-->🖼️)
|     |     |
|     |     |
|     |     |____ 📄FuncSpecs-Helper.md
|     |     |
|     |     |
|     |     |____ 📄FunctionalSpecification.md
|     |
|     |
|     |____ 📁TechnicalSpecifications
|     |     |
|     |     |
|     |     |____ 📄TechnicalSpecification.md
|     |
|     |
|     |____ 📁TestPlan
|           |
|           |
|           |____ 📁TestReport
|           |     |
|           |     |
|           |     |____ 📁FormReports
|           |     |
|           |     |
|           |     |____ 📁TestCaseReports
|           |
|           |
|           |____ 📄TestCase.md
|           |
|           |
|           |____ 📄TestPlan.md
|
|
|____ 📄README.md

📁folder 📄document 🖼️image 🎬scene 📦assets 💻source code ⚙️configuration
```

## 4. Requirements

To create an interesting experience for the user, game include this following feature.

|Functional Requirements|
|------------|
|Resources management include CO₂ level, population, happiness and money.|
|Strategic choice make has short, medium and long term on the  overall outcome and lead on multiple dillemas.|
|Reach 0 on people happiness or getting too high CO₂ level during a years lead to a game over.|
|Success as a new Mayor during the 10 next years (12 hours on real time) on you mandate goal.|
|The controls with mouse and keyboard on the overall gameplay.|
|UI element include resource meters on the top of the screen, action menus on the bottom and visual feedback of the city expancy and evolution of the resources.|
|Incarnate the main characther the Mayor, guided by Advisors, NPCs who give advice to how to manage the city and ecology and Citizens give the feedback of the city outcome|
|Visual evolution of world according of the urban changes, greener spaces or polluted areas. |
|Integrate educational content to the gameplay.|
|Low-poly art style emphasizing simplicity and clarity.|
|Sound design include feedback sound, atmosphere background sound effect.|
|Background music to keep player focus and change to most oppresive one when the situation become more critical.|

The game has this following objective to accomplish.

|Objective|
|---------|
|Give an engaging ton for the player feel more involve about climate change.|
|Educate the player about carbon footprint and how he can influence it.|
|Feel the pressure to do the wrong choice.|
|Learning about sustainable practices in urban development.|
|Release the game on itch.io|

## 5. Environment Development

### 5.1 Game Engine

For this project, the game engine Gotdot v4.3, the last stable version is used.

### 5.2 GDScript

**GDScript** is a high-level, dynamically typed scripting language used in the Godot Engine.
The syntax of GDScript is clean and easy to learn, resembling Python, give it the same advantage.
A complete documentation is also available due to this native nature to godot.
Cross-Platforming is supported.

### 5.3 Hardware and System Minimal Requirement

Gotdot v4.3 Requirement.

- **CPU**:

  - Windows: x86_32 CPU with SSE2 instructions, x86_64 CPU, ARMv8 CPU

  - macOS: x86_64 or ARM CPU (Apple Silicon)

  - Linux: x86_32 CPU with SSE2 instructions, x86_64 CPU, ARMv7 or ARMv8 CPU

- **GPU**:

  -  Integrated graphics with full Vulkan 1.0 support or OpenGL 3.3 support

- **RAM**:

  -  4 GB for native editor, 8 GB for web editor

- **Storage**:

  -  200 MB for executable, project files, and cache

- **Operating System**:
  - **Native editor**:
    - Windows 7 or later (64-bit)
    - macOS 10.13 (Compatibility) or macOS 10.15 (Forward+/Mobile) or later (64-bit)
    - Linux distribution released after 2016 (64-bit)
  - **Web editor**:
    - Firefox 79
    - Chrome 68
    - Edge 79
    - Safari 15.2
    - Opera 64

## 6. Implementation

### 6.1 Player Interaction and Camera Control

  The `Player.gd` script extends `Node3D` and handles player interactions, camera movement, and camera zoom. Below is an explanation of the key components and functions in the script.

#### Variables and Constants

```gdscript

extends Node3D

var mouse_sensitivity := 0.05

var moving_camera_input := Vector3()

var zoom_speed := 10

var mouse = Vector2()

var last_hovered_building = null

const distance = 1000

@onready var player_camera = $Camera3D

```

- `mouse_sensitivity`: Controls the sensitivity of the mouse for camera movement.

- `moving_camera_input`: Stores the input for moving the camera.

- `zoom_speed`: Controls the speed of the camera zoom.

- `mouse`: Stores the current mouse position.

- `last_hovered_building`: Keeps track of the last building the player hovered over.

- `distance`: The maximum distance for raycasting to detect buildings.

- `player_camera`: References the camera node in the scene.

#### Ready Function

```gdscript

func _ready() -> void:

    # Says that the cursor will be confined in the window

    Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)

```

- The `_ready` function confines the mouse cursor within the game window.

#### Process Function

```gdscript

func _process(_delta: float) -> void:

    # Allow the player to press 'escape' to exit the window

    if Input.is_action_just_pressed("ui_cancel"):

        Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

    if Input.is_action_pressed("moving_camera"):

        translate(moving_camera_input)

```

- The `_process` function allows the player to press 'escape' to make the mouse cursor visible.

- It also translates the camera based on the `moving_camera_input`.

#### Unhandled Input Function

```gdscript

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

```

- The `_unhandled_input` function handles camera movement when the right mouse button is held down.

- It also handles camera zoom-in and zoom-out using the mouse wheel.

#### Input Function

```gdscript

func _input(event):

    if event is InputEventMouseMotion:

        mouse = event.position

    if event is InputEventMouseButton:

        if Input.is_action_pressed("interact"):

            _get_mouse_pos(mouse)

```

- The `_input` function updates the mouse position and handles interactions when the left mouse button is clicked.

#### Get Mouse Position Function

```gdscript

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

        # Will hide the hover effect for every buildings in "buildings" group

        last_hovered_building = null

```

- The `_get_mouse_pos` function determines which building is clicked by the player using raycasting.

- It calls the `_hover_visible` and `_hover_hidden` functions on the buildings to show or hide hover effects.

### 6.2 Main Control and User Interface

The `MainControl.gd` script extends `Control` and handles the main menu interactions, user data, and settings management. Below is an explanation of the key components and functions in the script.

#### Variables

```gdscript

extends Control

var userDataFile = FileAccess.file_exists("user://userLanguage.dat")

var userSettingsFile = FileAccess.file_exists("user://settings.json")

```

- `userDataFile`: Checks if the user language data file exists.

- `userSettingsFile`: Checks if the user settings file exists.

#### Ready Function

```gdscript

func _ready():

    _gameInit()

    $PlayButton.connect("pressed", self._onPressed.bind(1))

    $LeaveButton.connect("pressed", self._onPressed.bind(2))

    $SettingsButton.connect("pressed", self._onPressed.bind(3))

    $CreditsButton.connect("pressed", self._onPressed.bind(4))

```

- The `_ready` function initializes the game and connects button presses to the `_onPressed` function.

#### Game Initialization

```gdscript

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

```

- The `_gameInit` function initializes the game settings and user data.

- It checks if the user data and settings files exist and creates them if they do not.

- It sets up the text language for the UI elements based on the user's language preference.

#### Button Press Handling

```gdscript

func _onPressed(i):

    match i:

        1: # Starting the game function

            get_tree().change_scene_to_file("res://Scenes/World.tscn")

        2: # Exiting the game function

            get_tree().quit()

        3: # Switch to Settings menu

            get_tree().change_scene_to_file("res://Scenes/SettingsMenu.tscn")

        4: # Switch to Credits

            get_tree().change_scene_to_file("res://Scenes/Credits.tscn")

```

- The `_onPressed` function handles button presses and performs different actions based on the button pressed.

- It changes the scene to the game world, settings menu, or credits, or exits the game.

#### Load User Data

```gdscript

func _loadUserData():

    var file = FileAccess.open("user://userLanguage.dat", FileAccess.READ)

    var content = file.get_as_text()

    return content

```

- The `_loadUserData` function loads the user's language preference from the `userLanguage.dat` file.

#### Create User Data

```gdscript

func _createUserData():

    var file = FileAccess.open("user://userLanguage.dat", FileAccess.WRITE)

    file.store_string("english")

```

The `_createUserData` function creates a default `userLanguage.dat` file with English as the default language

#### Create User Settings

```gdscript

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

    file.close()

```

- The `_createUserSettings` function creates a default `settings.json` file with default key bindings for movement.

### 6.3 Building Interaction

The `Building.gd` script extends `StaticBody3D` and handles the hover effects for buildings in the game. Below is an explanation of the key components and functions in the script.

#### Variables

```gdscript

extends StaticBody3D

@onready var hidden_hover = $BuildingMesh/BuildingHover

```

- `hidden_hover`: A reference to the hover effect node within the building mesh.

#### Ready Function

```gdscript

func _ready() -> void:

    add_to_group("buildings")

```

- The `_ready` function adds the building instance to the "buildings" group. This allows the game to manage and interact with all buildings collectively.

#### Hover Visible Function

```gdscript

func _hover_visible():

    hidden_hover.visible = true

```

- The `_hover_visible` function makes the hover effect visible when the building is hovered over by the player.

#### Hover Hidden Function

```gdscript

func _hover_hidden():

    hidden_hover.visible = false

```

- The `_hover_hidden` function hides the hover effect when the building is no longer hovered over by the player.

## 7. Deployment

The game will be release on itch.io a digital distribution website with more open market for indie game that more classical like Steam who has implemented a greenlight system, let a game publication less open.
Due the nature of the project, itch.io was chosen for this reason.

## 8. Glossary

|Term   | Definition  | External sources  |
|-------|-------------|-------------------|
| **Serious game**| Game designed with primary propose other than pure entertainment and broachs serious topic.| [Link](https://en.wikipedia.org/wiki/Serious_game)|
|**Construction and management simulation (CMS)**|Subgenre of simulation game in which players build, expand or manage fictional communities or projects with limited  resources.|[Link](https://en.wikipedia.org/wiki/Construction_and_management_simulation)|
|**City-building**|Genre of simulation video game where players act as the overall planner and leader of a city or town, looking down on it from above, and being responsible for its growth and management strategy.|[Link](https://en.wikipedia.org/wiki/City-building_game)|
|**Isomeric view**|Graphics employed in video games and pixel art that use a parallel projection, but which angle the viewpoint to reveal facets of the environment that would otherwise not be visible from a top-down perspective or side view, thereby producing a three-dimensional (3D) effect.|[Link](https://en.wikipedia.org/wiki/Isometric_video_game_graphics)|
|**Climate change**|Present-day climate change includes both global warming—the ongoing increase in global average temperature—and its wider effects on Earth's climate. Climate change in a broader sense also includes previous long-term changes to Earth's climate.|[Link](https://en.wikipedia.org/wiki/Climate_change)|
|**Godot**|Godot is a cross-platform, free and open-source game engine released under the permissive MIT license.|[Link](https://godotengine.org/)|
|**GDScript**|A high-level, dynamically typed programming language used to create content within the Godot Engine.|[Link](https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/gdscript_basics.html)|
|**Raycasting**|A technique used in computer graphics and computational geometry to determine the intersection of rays with objects in the environment.|[Link](https://en.wikipedia.org/wiki/Ray_casting)|
|**Node3D**|A type of node in the Godot Engine used for 3D game development.|[Link](https://docs.godotengine.org/en/stable/classes/class_node3d.html)|
|**StaticBody3D**|A type of physics body in the Godot Engine that is not intended to move, used for objects like walls and floors.|[Link](https://docs.godotengine.org/en/stable/classes/class_staticbody3d.html)|
|**JSON**|JavaScript Object Notation, a lightweight data-interchange format that is easy for humans to read and write, and easy for machines to parse and generate.|[Link](https://www.json.org/json-en.html)|


