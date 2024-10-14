extends Node2D


@onready var skin_sprite = $Sprite2D

var skin_keys = []
var color_keys = []
var current_skin_index = 0
var current_color_index = 0

func _ready():
		set_sprite_keys()
		update_sprite()

func set_sprite_keys():
	skin_keys = Global.skins_collection.keys()
	
func update_sprite():
	var current_sprite = skin_keys[current_skin_index]
	skin_sprite.texture = Global.skins_collection[current_sprite]
	skin_sprite.modulate = Global.skins_color_options[current_color_index]
	
	Global.selected_skin = current_sprite
	Global.selected_skin_color = Global.skins_color_options[current_color_index]
