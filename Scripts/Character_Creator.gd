extends Node2D

var player_name = ""

@onready var text_edit = $CreateScreen/ColorRect/Details/TextEdit

func _on_text_edit_text_changed():
	player_name = text_edit.text
	pass # Replace with function body.

func _on_save_button_pressed():
	CharacterManager.player_name = player_name
	SaveManager.save_game()
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
	pass # Replace with function body.


func _on_load_button_pressed():
	SaveManager.load_game()
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
	pass # Replace with function body.
