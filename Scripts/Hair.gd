extends Node2D


@onready var hair_sprite = $Sprite2D

var hair_keys = []
var color_keys = []
var current_hair_index = 0
var current_color_index = 0

func _ready():
		set_sprite_keys()
		update_sprite()

func set_sprite_keys():
	hair_keys = Global.hairs_collection.keys()
	
func update_sprite():
	var current_sprite = hair_keys[current_hair_index]
	if current_sprite == "none":
		hair_sprite.texture = null
	else:
		hair_sprite.texture = Global.hairs_collection[current_sprite]
		hair_sprite.modulate = Global.hairs_color_options[current_color_index]
	
	Global.selected_hair = current_sprite
	Global.selected_hair_color = Global.hairs_color_options[current_color_index]
