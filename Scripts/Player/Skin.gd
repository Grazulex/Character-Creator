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
	skin_keys = CharacterManager.player_skins_collection.keys()
	
func update_sprite():
	var current_sprite = skin_keys[current_skin_index]
	skin_sprite.texture = CharacterManager.player_skins_collection[current_sprite]
	skin_sprite.modulate = CharacterManager.skins_color_options[current_color_index]
	
	CharacterManager.selected_player_skin = current_sprite
	CharacterManager.selected_player_skin_color = CharacterManager.skins_color_options[current_color_index]


func _on_collection_button_pressed():
	current_skin_index  = (current_skin_index + 1) % skin_keys.size()
	update_sprite()
	pass # Replace with function body.


func _on_color_button_pressed():
	current_color_index = (current_color_index + 1) % CharacterManager.skins_color_options.size()
	update_sprite()
	pass # Replace with function body.
