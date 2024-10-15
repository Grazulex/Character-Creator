extends Node

const SAVE_PATH = "user://"

signal game_loaded
signal game_saved

var current_save : Dictionary = {
	player = {
		name = "",
		body =  {
			skin = "01",
			skin_color = "01",
			hair = "none",
			hair_color = "none",
			eye = "none",
			eye_color = "none",
			clothe = "none",
			clothe_color = "none",
		},
		portrait = {
			skin = "01",
			skin_color = "01",
			hair = "none",
			hair_color = "none",
			eye = "none",
			eye_color = "none",
			clothe = "none",
			clothe_color = "none"
		}
	}
}

func save_game(): 
	update_player_save_data()
	var file := FileAccess.open( SAVE_PATH + "save.sav", FileAccess.WRITE )
	var save_json = JSON.stringify( current_save )
	file.store_line( save_json )
	game_saved.emit()
	pass
	
func load_game():
	var file := FileAccess.open( SAVE_PATH + "save.sav", FileAccess.READ )
	var json := JSON.new()
	json.parse( file.get_line() )
	var save_dict : Dictionary = json.get_data() as Dictionary
	current_save = save_dict
	update_player_data()
	game_loaded.emit()
	pass
	
func update_player_data():
	CharacterManager.selected_player_skin = current_save.player.body.skin
	CharacterManager.selected_player_skin_color = current_save.player.body.skin_color
	CharacterManager.selected_player_hair = current_save.player.body.hair
	CharacterManager.selected_player_hair_color = current_save.player.body.hair_color
	CharacterManager.selected_player_eye = current_save.player.body.eye
	CharacterManager.selected_player_eye_color = current_save.player.body.eye_color
	CharacterManager.selected_player_clothe = current_save.player.body.clothe
	CharacterManager.selected_player_clothe_color = current_save.player.body.clothe_color
	
	CharacterManager.selected_portrait_skin = current_save.player.portrait.skin
	CharacterManager.selected_portrait_skin_color = current_save.player.portrait.skin_color
	CharacterManager.selected_portrait_hair = current_save.player.portrait.hair
	CharacterManager.selected_player_hair_color = current_save.player.portrait.hair_color
	CharacterManager.selected_portrait_eye = current_save.player.portrait.eye
	CharacterManager.selected_portrait_eye_color = current_save.player.portrait.eye_color
	CharacterManager.selected_portrait_clothe = current_save.player.portrait.clothe
	CharacterManager.selected_player_clothe_color = current_save.player.portrait.clothe_color
	
	CharacterManager.player_name = current_save.player.name	
	
func update_player_save_data():
	current_save.player.body.skin = CharacterManager.selected_player_skin
	current_save.player.body.skin_color = CharacterManager.selected_player_skin_color
	current_save.player.body.hair = CharacterManager.selected_player_hair
	current_save.player.body.hair_color = CharacterManager.selected_player_hair_color
	current_save.player.body.eye = CharacterManager.selected_player_eye
	current_save.player.body.eye_color = CharacterManager.selected_player_eye_color
	current_save.player.body.clothe = CharacterManager.selected_player_clothe
	current_save.player.body.clothe_color = CharacterManager.selected_player_clothe_color
	
	current_save.player.portrait.skin = CharacterManager.selected_portrait_skin
	current_save.player.portrait.skin_color = CharacterManager.selected_portrait_skin_color
	current_save.player.portrait.hair = CharacterManager.selected_portrait_hair
	current_save.player.portrait.hair_color = CharacterManager.selected_player_hair_color
	current_save.player.portrait.eye = CharacterManager.selected_portrait_eye
	current_save.player.portrait.eye_color = CharacterManager.selected_portrait_eye_color
	current_save.player.portrait.clothe = CharacterManager.selected_portrait_clothe
	current_save.player.portrait.clothe_color = CharacterManager.selected_player_clothe_color
	
	current_save.player.name = CharacterManager.player_name
