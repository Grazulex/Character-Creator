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
	hair_keys = CharacterManager.portrait_hairs_collection.keys()
	
func update_sprite():
	var current_sprite = hair_keys[current_hair_index]
	if current_sprite == "none":
		hair_sprite.texture = null
	else:
		hair_sprite.texture = CharacterManager.portrait_hairs_collection[current_sprite]
		hair_sprite.modulate = CharacterManager.hairs_color_options[current_color_index]
	
	CharacterManager.selected_portrait_hair = current_sprite
	CharacterManager.selected_portrait_hair_color = CharacterManager.hairs_color_options[current_color_index]


func _on_collection_button_pressed():
	current_hair_index  = (current_hair_index + 1) % hair_keys.size()
	update_sprite()
	pass # Replace with function body.


func _on_color_button_pressed():
	current_color_index = (current_color_index + 1) % CharacterManager.hairs_color_options	.size()
	update_sprite()
	pass # Replace with function body.
