extends Node2D


@onready var clothe_sprite = $Sprite2D

var clothe_keys = []
var color_keys = []
var current_clothe_index = 0
var current_color_index = 0

func _ready():
		set_sprite_keys()
		update_sprite()

func set_sprite_keys():
	clothe_keys = Global.clothes_collection.keys()
	
func update_sprite():
	var current_sprite = clothe_keys[current_clothe_index]
	if current_sprite == "none":
		clothe_sprite.texture = null
	else:
		clothe_sprite.texture = Global.clothes_collection[current_sprite]
		clothe_sprite.modulate = Global.color_options[current_color_index]
	
	Global.selected_clothe = current_sprite
	Global.selected_clothe_color = Global.color_options[current_color_index]


func _on_collection_button_pressed():
	current_clothe_index  = (current_clothe_index + 1) % clothe_keys.size()
	update_sprite()
	pass # Replace with function body.


func _on_color_button_pressed():
	current_color_index = (current_color_index + 1) % Global.hairs_color_options.size()
	update_sprite()
	pass # Replace with function body.
