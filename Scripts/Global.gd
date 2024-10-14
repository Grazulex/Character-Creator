extends Node

var skins_collection = {
	"01" : preload("res://Assets/Skins/1.png"),
	"02" : preload("res://Assets/Skins/2.png"),
	"03" : preload("res://Assets/Skins/3.png")
}

var eyes_collection = {
	"none" : null,
	"01" : preload("res://Assets/Eyes/Female/Black.png"),
	"02" : preload("res://Assets/Eyes/Female/Blue.png"),
	"03" : preload("res://Assets/Eyes/Female/Brown.png"),
	"04" : preload("res://Assets/Eyes/Female/Green.png"),
	"05" : preload("res://Assets/Eyes/Male/Black.png"),
	"06" : preload("res://Assets/Eyes/Male/Blue.png"),
	"07" : preload("res://Assets/Eyes/Male/Brown.png"),
	"08" : preload("res://Assets/Eyes/Male/Green.png")
} 

var hairs_collection = {
	"none" : null,
	"01" : preload("res://Assets/Hair/Faty/Black.png"),
	"02" : preload("res://Assets/Hair/Faty/Blonde.png"),
	"03" : preload("res://Assets/Hair/Faty/Blue.png"),
	"04" : preload("res://Assets/Hair/Faty/Brown.png"),
	"05" : preload("res://Assets/Hair/Faty/Ginger.png"),
	"06" : preload("res://Assets/Hair/Faty/Pink.png"),
	"07" : preload("res://Assets/Hair/Faty/Red.png")
}

var clothes_collection = {
	"none" : null,
	"01" : preload("res://Assets/Clothers/Farm Pink.png"),
	"02" : preload("res://Assets/Clothers/Farm Red.png"),
	"03" : preload("res://Assets/Clothers/Farm.png")
} 

var skins_color_options = [
	Color(1, 1, 1), #Default
	Color(0.96, 0.80, 0.69), #Light Skin
	Color(0.72, 0.54, 0.39), #Medium Skin
	Color(0.45, 0.34, 0.27), #Brown Skin
]

var hairs_color_options = [
	Color(1, 1, 1), #Default
	Color(0.1, 0.1, 0.1), #Black
	Color(0.4, 0.2, 0.1), #Brown
	Color(0.9, 0.6, 0.2), #Blonde
	Color(0.5, 0.25, 0), #Auburn
]

var color_options = [
	Color(1, 1, 1), #Default
	Color(1, 0, 0), #Red
	Color(0, 1, 0), #Green
	Color(0, 0, 1), #Blue
	Color(0, 0, 0), #Black
	Color(1, 1, 1), #White
]

var selected_skin : String = ""
var selected_eye : String = ""
var selected_hair : String = ""
var selected_clothe : String = ""

var selected_skin_color : Color =  ""
var selected_hair_color : Color = ""
var selected_eye_color : Color = ""
var selected_clothe_color : Color = ""

var player_name : String = ""
