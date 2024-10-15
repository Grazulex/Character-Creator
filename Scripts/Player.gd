extends CharacterBody2D

@onready var skin = $Skeleton/Skin
@onready var hair = $Skeleton/Hair
@onready var eye = $Skeleton/Eye
@onready var clothe = $Skeleton/Clothe
@onready var name_label = $Skeleton/Name

var last_direction : Vector2 = Vector2.ZERO
const speed : int = 200

func _ready():
	initialize_player()

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
	skin.texture = Global.skins_collection[Global.selected_skin]
	skin.modulate = Global.selected_skin_color
	
	eye.texture = Global.eyes_collection[Global.selected_eye]
	eye.modulate = Global.selected_eye_color

	hair.texture = Global.hairs_collection[Global.selected_hair]
	hair.modulate = Global.selected_hair_color
	
	clothe.texture = Global.clothes_collection[Global.selected_clothe]
	clothe.modulate = Global.selected_clothe_color
		
	name_label.text = Global.player_name
	pass
