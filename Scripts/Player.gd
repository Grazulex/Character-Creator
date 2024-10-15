class_name Player extends CharacterBody2D

@onready var player_skin = $Skeleton/Skin
@onready var player_hair = $Skeleton/Hair
@onready var player_eye = $Skeleton/Eye
@onready var player_clothe = $Skeleton/Clothe
@onready var name_label = $Skeleton/Name

var last_direction : Vector2 = Vector2.ZERO
const speed : int = 200

func _ready():
	initialize_player()
	initialize_portrait()

func _physics_process(delta):
	var direction = Vector2.ZERO
	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down")
	
	if direction != last_direction:
		last_direction = direction
		
	if direction.x != 0:
		velocity.x = direction.x * speed
	else:
		velocity.x = move_toward(velocity.x,0, speed * delta)
		
	if direction.y != 0:
		velocity.y = direction.y * speed
	else: 
		velocity.y = move_toward(velocity.y,0, speed * delta)
		
	move_and_slide()
		 
func initialize_player():
	player_skin.texture = CharacterManager.player_skins_collection[CharacterManager.selected_player_skin]
	player_skin.modulate = CharacterManager.selected_player_skin_color
	
	player_eye.texture = CharacterManager.player_eyes_collection[CharacterManager.selected_player_eye]
	player_eye.modulate = CharacterManager.selected_player_eye_color

	player_hair.texture = CharacterManager.player_hairs_collection[CharacterManager.selected_player_hair]
	player_hair.modulate = CharacterManager.selected_player_hair_color
	
	player_clothe.texture = CharacterManager.player_clothes_collection[CharacterManager.selected_player_clothe]
	player_clothe.modulate = CharacterManager.selected_player_clothe_color
		
	name_label.text = CharacterManager.player_name
	pass
	
func initialize_portrait():
	pass
