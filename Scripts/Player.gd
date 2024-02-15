extends CharacterBody2D
const SPEED = 300
const GRAVITY = 40
const JUMP_SPEED = 25*GRAVITY

func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		velocity.x = SPEED
	else:
		velocity.x = 0
		
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -JUMP_SPEED
	velocity.y += GRAVITY
	move_and_slide()
