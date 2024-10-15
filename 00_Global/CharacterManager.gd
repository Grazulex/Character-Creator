extends Node

var player_skins_collection = {
	"01" : preload("res://Assets/Player/Body/Skins/1.png"),
	"02" : preload("res://Assets/Player/Body/Skins/2.png"),
	"03" : preload("res://Assets/Player/Body/Skins/3.png"),
	"04" : preload("res://Assets/Player/Body/Skins/4.png")
}

var portrait_skins_collection = {
	"01" : preload("res://Assets/Player/Portrait/Female/Skins/1.png"),
	"02" : preload("res://Assets/Player/Portrait/Female/Skins/2.png"),
	"03" : preload("res://Assets/Player/Portrait/Female/Skins/3.png"),
	"04" : preload("res://Assets/Player/Portrait/Female/Skins/4.png"),
	"05" : preload("res://Assets/Player/Portrait/Male/Skins/1.png"),
	"06" : preload("res://Assets/Player/Portrait/Male/Skins/2.png"),
	"07" : preload("res://Assets/Player/Portrait/Male/Skins/3.png"),
	"08" : preload("res://Assets/Player/Portrait/Male/Skins/4.png"),
}

var player_eyes_collection = {
	"none" : null,
	"01" : preload("res://Assets/Player/Body/Eyes/Female/Black.png"),
	"02" : preload("res://Assets/Player/Body/Eyes/Female/Blue.png"),
	"03" : preload("res://Assets/Player/Body/Eyes/Female/Brown.png"),
	"04" : preload("res://Assets/Player/Body/Eyes/Female/Green.png"),
	"05" : preload("res://Assets/Player/Body/Eyes/Male/Black.png"),
	"06" : preload("res://Assets/Player/Body/Eyes/Male/Blue.png"),
	"07" : preload("res://Assets/Player/Body/Eyes/Male/Brown.png"),
	"08" : preload("res://Assets/Player/Body/Eyes/Male/Green.png")
} 

var portrait_eyes_collection = {
	"none" : null,
	"01" : preload("res://Assets/Player/Portrait/Female/Eyes/Black.png"),
	"02" : preload("res://Assets/Player/Portrait/Female/Eyes/Blue.png"),
	"03" : preload("res://Assets/Player/Portrait/Female/Eyes/Brown.png"),
	"04" : preload("res://Assets/Player/Portrait/Female/Eyes/Green.png"),
	"05" : preload("res://Assets/Player/Portrait/Male/Eyes/Black.png"),
	"06" : preload("res://Assets/Player/Portrait/Male/Eyes/Blue.png"),
	"07" : preload("res://Assets/Player/Portrait/Male/Eyes/Brown.png"),
	"08" : preload("res://Assets/Player/Portrait/Male/Eyes/Green.png")
}

var player_hairs_collection = {
	"none" : null,
	"01" : preload("res://Assets/Player/Body/Hair/Faty/Black.png"),
	"02" : preload("res://Assets/Player/Body/Hair/Faty/Blonde.png"),
	"03" : preload("res://Assets/Player/Body/Hair/Faty/Blue.png"),
	"04" : preload("res://Assets/Player/Body/Hair/Faty/Brown.png"),
	"05" : preload("res://Assets/Player/Body/Hair/Faty/Ginger.png"),
	"06" : preload("res://Assets/Player/Body/Hair/Faty/Pink.png"),
	"07" : preload("res://Assets/Player/Body/Hair/Faty/Red.png"),
	"08" : preload("res://Assets/Player/Body/Hair/Fawn/Black.png"),
	"09" : preload("res://Assets/Player/Body/Hair/Fawn/Blonde.png"),
	"10" : preload("res://Assets/Player/Body/Hair/Fawn/Blue.png"),
	"11" : preload("res://Assets/Player/Body/Hair/Fawn/Brown.png"),
	"12" : preload("res://Assets/Player/Body/Hair/Fawn/Ginger.png"),
	"13" : preload("res://Assets/Player/Body/Hair/Fawn/Pink.png"),
	"14" : preload("res://Assets/Player/Body/Hair/Fawn/Red.png"),
	"15" : preload("res://Assets/Player/Body/Hair/Iredessa/Black.png"),
	"16" : preload("res://Assets/Player/Body/Hair/Iredessa/Blonde.png"),
	"17" : preload("res://Assets/Player/Body/Hair/Iredessa/Blue.png"),
	"18" : preload("res://Assets/Player/Body/Hair/Iredessa/Brown.png"),
	"19" : preload("res://Assets/Player/Body/Hair/Iredessa/Ginger.png"),
	"20" : preload("res://Assets/Player/Body/Hair/Iredessa/Pink.png"),
	"21" : preload("res://Assets/Player/Body/Hair/Iredessa/Red.png"),
	"22" : preload("res://Assets/Player/Body/Hair/Josh/Black.png"),
	"23" : preload("res://Assets/Player/Body/Hair/Josh/Blonde.png"),
	"24" : preload("res://Assets/Player/Body/Hair/Josh/Blue.png"),
	"25" : preload("res://Assets/Player/Body/Hair/Josh/Brown.png"),
	"26" : preload("res://Assets/Player/Body/Hair/Josh/Ginger.png"),
	"27" : preload("res://Assets/Player/Body/Hair/Josh/Pink.png"),
	"28" : preload("res://Assets/Player/Body/Hair/Josh/Red.png"),
	"29" : preload("res://Assets/Player/Body/Hair/Lyria/Black.png"),
	"30" : preload("res://Assets/Player/Body/Hair/Lyria/Blonde.png"),
	"31" : preload("res://Assets/Player/Body/Hair/Lyria/Blue.png"),
	"32" : preload("res://Assets/Player/Body/Hair/Lyria/Brown.png"),
	"33" : preload("res://Assets/Player/Body/Hair/Lyria/Ginger.png"),
	"34" : preload("res://Assets/Player/Body/Hair/Lyria/Pink.png"),
	"35" : preload("res://Assets/Player/Body/Hair/Lyria/Red.png"),	
	"36" : preload("res://Assets/Player/Body/Hair/Sebastian/Black.png"),
	"37" : preload("res://Assets/Player/Body/Hair/Sebastian/Blonde.png"),
	"38" : preload("res://Assets/Player/Body/Hair/Sebastian/Blue.png"),
	"39" : preload("res://Assets/Player/Body/Hair/Sebastian/Brown.png"),
	"40" : preload("res://Assets/Player/Body/Hair/Sebastian/Ginger.png"),
	"41" : preload("res://Assets/Player/Body/Hair/Sebastian/Pink.png"),
	"42" : preload("res://Assets/Player/Body/Hair/Sebastian/Red.png"),		
	"43" : preload("res://Assets/Player/Body/Hair/Silvermist/Black.png"),
	"44" : preload("res://Assets/Player/Body/Hair/Silvermist/Blonde.png"),
	"45" : preload("res://Assets/Player/Body/Hair/Silvermist/Blue.png"),
	"46" : preload("res://Assets/Player/Body/Hair/Silvermist/Brown.png"),
	"47" : preload("res://Assets/Player/Body/Hair/Silvermist/Ginger.png"),
	"48" : preload("res://Assets/Player/Body/Hair/Silvermist/Pink.png"),
	"49" : preload("res://Assets/Player/Body/Hair/Silvermist/Red.png"),		
}

var portrait_hairs_collection = {
	"none" : null,
	"01" : preload("res://Assets/Player/Portrait/Female/Hair/Fawn/Black.png"),
	"02" : preload("res://Assets/Player/Portrait/Female/Hair/Fawn/Blue.png"),
	"03" : preload("res://Assets/Player/Portrait/Female/Hair/Fawn/Brown.png"),
	"04" : preload("res://Assets/Player/Portrait/Female/Hair/Fawn/Ginger.png"),
	"05" : preload("res://Assets/Player/Portrait/Female/Hair/Fawn/Green.png"),
	"06" : preload("res://Assets/Player/Portrait/Female/Hair/Fawn/Light Brown.png"),
	"07" : preload("res://Assets/Player/Portrait/Female/Hair/Fawn/Pink.png"),
	"08" : preload("res://Assets/Player/Portrait/Female/Hair/Fawn/Puppke.png"),
	"09" : preload("res://Assets/Player/Portrait/Female/Hair/Fawn/Red.png"),
	"10" : preload("res://Assets/Player/Portrait/Female/Hair/Fawn/Yellow.png"),
	"12" : preload("res://Assets/Player/Portrait/Female/Hair/Iridessa/Black.png"),
	"13" : preload("res://Assets/Player/Portrait/Female/Hair/Iridessa/Blue.png"),
	"14" : preload("res://Assets/Player/Portrait/Female/Hair/Iridessa/Brown.png"),
	"15" : preload("res://Assets/Player/Portrait/Female/Hair/Iridessa/Ginger.png"),
	"16" : preload("res://Assets/Player/Portrait/Female/Hair/Iridessa/Green.png"),
	"17" : preload("res://Assets/Player/Portrait/Female/Hair/Iridessa/Light Brown.png"),
	"18" : preload("res://Assets/Player/Portrait/Female/Hair/Iridessa/Pink.png"),
	"19" : preload("res://Assets/Player/Portrait/Female/Hair/Iridessa/Pupple.png"),
	"20" : preload("res://Assets/Player/Portrait/Female/Hair/Iridessa/Red.png"),
	"21" : preload("res://Assets/Player/Portrait/Female/Hair/Iridessa/Yellow.png"),
	"22" : preload("res://Assets/Player/Portrait/Female/Hair/Lyria/Black.png"),
	"23" : preload("res://Assets/Player/Portrait/Female/Hair/Lyria/Blue.png"),
	"24" : preload("res://Assets/Player/Portrait/Female/Hair/Lyria/Brown.png"),
	"25" : preload("res://Assets/Player/Portrait/Female/Hair/Lyria/Ginger.png"),
	"26" : preload("res://Assets/Player/Portrait/Female/Hair/Lyria/Green.png"),
	"27" : preload("res://Assets/Player/Portrait/Female/Hair/Lyria/Light Brown.png"),
	"28" : preload("res://Assets/Player/Portrait/Female/Hair/Lyria/Pink.png"),
	"29" : preload("res://Assets/Player/Portrait/Female/Hair/Lyria/Pupple.png"),
	"30" : preload("res://Assets/Player/Portrait/Female/Hair/Lyria/Red.png"),
	"31" : preload("res://Assets/Player/Portrait/Female/Hair/Lyria/Yellow.png"),	
	"32" : preload("res://Assets/Player/Portrait/Female/Hair/Silvermist/Black.png"),
	"33" : preload("res://Assets/Player/Portrait/Female/Hair/Silvermist/Blue.png"),
	"34" : preload("res://Assets/Player/Portrait/Female/Hair/Silvermist/Brown.png"),
	"35" : preload("res://Assets/Player/Portrait/Female/Hair/Silvermist/Ginger.png"),
	"36" : preload("res://Assets/Player/Portrait/Female/Hair/Silvermist/Green.png"),
	"37" : preload("res://Assets/Player/Portrait/Female/Hair/Silvermist/Light Brown.png"),
	"38" : preload("res://Assets/Player/Portrait/Female/Hair/Silvermist/Pink.png"),
	"39" : preload("res://Assets/Player/Portrait/Female/Hair/Silvermist/Pupple.png"),
	"40" : preload("res://Assets/Player/Portrait/Female/Hair/Silvermist/Red.png"),
	"41" : preload("res://Assets/Player/Portrait/Female/Hair/Silvermist/Yellow.png"),
	"42" : preload("res://Assets/Player/Portrait/Male/Hair/Josh/Black.png"),
	"43" : preload("res://Assets/Player/Portrait/Male/Hair/Josh/Blue.png"),
	"44" : preload("res://Assets/Player/Portrait/Male/Hair/Josh/Brown.png"),
	"45" : preload("res://Assets/Player/Portrait/Male/Hair/Josh/Ginger.png"),
	"46" : preload("res://Assets/Player/Portrait/Male/Hair/Josh/Green.png"),
	"47" : preload("res://Assets/Player/Portrait/Male/Hair/Josh/Light Brown.png"),
	"48" : preload("res://Assets/Player/Portrait/Male/Hair/Josh/Pink.png"),
	"49" : preload("res://Assets/Player/Portrait/Male/Hair/Josh/Pupple.png"),
	"50" : preload("res://Assets/Player/Portrait/Male/Hair/Josh/Red.png"),
	"51" : preload("res://Assets/Player/Portrait/Male/Hair/Josh/Yellow.png"),
	"52" : preload("res://Assets/Player/Portrait/Male/Hair/Josh/Black.png"),
	"53" : preload("res://Assets/Player/Portrait/Male/Hair/Sebastian/Blue.png"),
	"54" : preload("res://Assets/Player/Portrait/Male/Hair/Sebastian/Brown.png"),
	"55" : preload("res://Assets/Player/Portrait/Male/Hair/Sebastian/Ginger.png"),
	"56" : preload("res://Assets/Player/Portrait/Male/Hair/Sebastian/Green.png"),
	"57" : preload("res://Assets/Player/Portrait/Male/Hair/Sebastian/Light Brown.png"),
	"58" : preload("res://Assets/Player/Portrait/Male/Hair/Sebastian/Pink.png"),
	"59" : preload("res://Assets/Player/Portrait/Male/Hair/Sebastian/Pupple.png"),
	"60" : preload("res://Assets/Player/Portrait/Male/Hair/Sebastian/Red.png"),
	"61" : preload("res://Assets/Player/Portrait/Male/Hair/Sebastian/Yellow.png"),	
}

var player_clothes_collection = {
	"none" : null,
	"01" : preload("res://Assets/Player/Body/Clothers/Farm Pink.png"),
	"02" : preload("res://Assets/Player/Body/Clothers/Farm Red.png"),
	"03" : preload("res://Assets/Player/Body/Clothers/Farm.png"),
	"04" : preload("res://Assets/Player/Body/Clothers/Female/Pink.png"),
	"05" : preload("res://Assets/Player/Body/Clothers/Male/Green.png")
} 

var portrait_clothes_collection = {
	"none" : null,
	"01" : preload("res://Assets/Player/Portrait/Female/Clothers/Bee.png"),
	"02" : preload("res://Assets/Player/Portrait/Female/Clothers/Cow.png"),
	"03" : preload("res://Assets/Player/Portrait/Female/Clothers/Manu.png"),
	"04" : preload("res://Assets/Player/Portrait/Female/Clothers/Dress/Black.png"),
	"05" : preload("res://Assets/Player/Portrait/Female/Clothers/Dress/Blue.png"),
	"06" : preload("res://Assets/Player/Portrait/Female/Clothers/Dress/Brown.png"),
	"07" : preload("res://Assets/Player/Portrait/Female/Clothers/Dress/Green.png"),
	"08" : preload("res://Assets/Player/Portrait/Female/Clothers/Dress/Light Brown.png"),
	"09" : preload("res://Assets/Player/Portrait/Female/Clothers/Dress/Pink.png"),
	"10" : preload("res://Assets/Player/Portrait/Female/Clothers/Dress/Pupple.png"),
	"11" : preload("res://Assets/Player/Portrait/Female/Clothers/Dress/Red.png"),
	"12" : preload("res://Assets/Player/Portrait/Female/Clothers/Dress/Yellow.png"),
	"13" : preload("res://Assets/Player/Portrait/Female/Clothers/Fantasies/Carrot.png"),
	"14" : preload("res://Assets/Player/Portrait/Female/Clothers/Fantasies/Chicken.png"),
	"15" : preload("res://Assets/Player/Portrait/Female/Clothers/Fantasies/Deer.png"),
	
	"16" : preload("res://Assets/Player/Portrait/Male/Clothers/Bee.png"),
	"18" : preload("res://Assets/Player/Portrait/Male/Clothers/Farm.png"),
	"19" : preload("res://Assets/Player/Portrait/Male/Clothers/1/Black.png"),
	"20" : preload("res://Assets/Player/Portrait/Male/Clothers/1/Brown.png"),
	"21" : preload("res://Assets/Player/Portrait/Male/Clothers/1/Gray.png"),
	"22" : preload("res://Assets/Player/Portrait/Male/Clothers/1/Green.png"),
	"23" : preload("res://Assets/Player/Portrait/Male/Clothers/1/Red.png"),
	"24" : preload("res://Assets/Player/Portrait/Male/Clothers/1/White.png"),
	"26" : preload("res://Assets/Player/Portrait/Male/Clothers/2/Brown.png"),
	"27" : preload("res://Assets/Player/Portrait/Male/Clothers/2/Gray.png"),
	"28" : preload("res://Assets/Player/Portrait/Male/Clothers/2/Green.png"),
	"29" : preload("res://Assets/Player/Portrait/Male/Clothers/2/Red.png"),
	"30" : preload("res://Assets/Player/Portrait/Male/Clothers/2/White.png"),	
}

var skins_color_options = [
	Color.WHITE, #Default
	Color.LIGHT_PINK, #Light Skin
	Color.PINK, #Medium Skin
	Color.ROSY_BROWN, #Brown Skin
]

var hairs_color_options = [
	Color.WHITE, #Default
	Color.BLACK, #Black
	Color.BROWN, #Brown
	Color.BURLYWOOD, #Blonde
	Color.CORAL, #Auburn
]

var color_options = [
	Color.WHITE, #Default
	Color.RED, #Red
	Color.GREEN, #Green
	Color.BLUE, #Blue
	Color.BLACK, #Black
	Color.WHITE, #White
	Color.YELLOW, #Yellow
]

var selected_player_skin = ""
var selected_player_eye = ""
var selected_player_hair = ""
var selected_player_clothe = ""

var selected_portrait_skin = ""
var selected_portrait_eye = ""
var selected_portrait_hair = ""
var selected_portrait_clothe = ""

var selected_player_skin_color =  ""
var selected_player_hair_color = ""
var selected_player_eye_color = ""
var selected_player_clothe_color = ""

var selected_portrait_skin_color =  ""
var selected_portrait_hair_color = ""
var selected_portrait_eye_color = ""
var selected_portrait_clothe_color = ""

var player_name = ""
