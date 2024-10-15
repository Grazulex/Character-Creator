extends Node2D


@onready var eye_sprite = $Sprite2D

var eye_keys = []
var color_keys = []
var current_eye_index = 0
var current_color_index = 0

func _ready():
		set_sprite_keys()
		update_sprite()

func set_sprite_keys():
	eye_keys = Global.eyes_collection.keys()
	
func update_sprite():
	var current_sprite = eye_keys[current_eye_index]
	if current_sprite == "none":
		eye_sprite.texture = null
	else:
		eye_sprite.texture = Global.eyes_collection[current_sprite]
		eye_sprite.modulate = Global.color_options[current_color_index]
	
	Global.selected_eye = current_sprite
	Global.selected_eye_color = Global.color_options[current_color_index]


func _on_collection_button_pressed():
	current_eye_index  = (current_eye_index + 1) % eye_keys.size()
	update_sprite()
	pass # Replace with function body.


func _on_color_button_pressed():
	current_color_index = (current_color_index + 1) % Global.color_options.size()
	update_sprite()
	pass # Replace with function body.
