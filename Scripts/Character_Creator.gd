extends Node2D


var player_name = ""
@onready var text_edit = $CreatoeScreen/ColorRect/Details/TextEdit


func _on_text_edit_text_changed():
	player_name = text_edit.text	
	pass # Replace with function body.


func _on_confirm_button_pressed():
	Global.player_name = player_name
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
	pass # Replace with function body.
