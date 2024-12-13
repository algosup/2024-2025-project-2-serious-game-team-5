extends ColorRect

@onready var popup_timer = $PopupTimer
@onready var buttons_popups = {
	$ScrollContainer/BuildingsBox/BuildingsLabel/ResidentialsLabel/SmallHouse: $SmallHouseInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/ResidentialsLabel/MediumHouse: $MediumHouseInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/ResidentialsLabel/LargeHouse: $LargeHouseInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/ResidentialsLabel/Apartment: $ApartmentInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/ResidentialsLabel/Skyscraper: $SkyscraperInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/PublicLabel/Hospital: $HospitalInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/PublicLabel/Museum: $MuseumInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/PublicLabel/School: $SchoolInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/IndustrialLabel/Factory: $FactoryInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/IndustrialLabel/PowerPlant: $PowerPlantInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/IndustrialLabel/SolarPanel: $SolarPanelInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/IndustrialLabel/WindTurbine: $WindTurbineInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/CommercialLabel/Bakery: $BakeryInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/CommercialLabel/Barbershop: $BarbershopInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/CommercialLabel/Bookshop: $BookshopInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/CommercialLabel/Casino: $CasinoInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/CommercialLabel/Farm: $FarmInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/CommercialLabel/Hardware: $HardwareInfo,
	$ScrollContainer/BuildingsBox/BuildingsLabel/CommercialLabel/Pharmacy: $PharmacyInfo,
	$ScrollContainer/BuildingsBox/OthersLabel/DecorativeLabel/Bench: $BenchInfo,
	$ScrollContainer/BuildingsBox/OthersLabel/DecorativeLabel/Tree: $TreeInfo,
	$ScrollContainer/BuildingsBox/OthersLabel/TerrainLabel/Road: $RoadInfo,
	$ScrollContainer/BuildingsBox/OthersLabel/TerrainLabel/Lake: $LakeInfo
}

# Track the current popup
var current_popup: Control = null

func _ready() -> void:
	# Ensure all the popups are hidden
	for button in buttons_popups.keys():
		buttons_popups[button].visible = false
		# Connect buttons to _on_Button_mouse_entered and _on_Button_mouse_exited
		button.connect("mouse_entered", Callable(self, "_on_Button_mouse_entered").bind(button))
		button.connect("mouse_exited", Callable(self, "_on_Button_mouse_exited").bind(button))
		
	# Connect the timer signal to _on_Timer_timeout
	popup_timer.connect("timeout", Callable(self, "_on_Timer_timeout"))
	
# This function set the corresponding popup as the current popup and start the timer when the cursor is on a button
func _on_Button_mouse_entered(button) -> void:
	current_popup = buttons_popups[button]
	popup_timer.start()
	
# This function will hide the popup when the cursor exit the button
func _on_Button_mouse_exited(_button) -> void:
	if current_popup:
		current_popup.visible = false
	popup_timer.stop()

# This function display the popup when the cursor is on the button x amount of time
func _on_Timer_timeout() -> void:
	if current_popup:
		current_popup.visible = true
