extends CharacterBody2D


const SPEED = 1.0
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var camera_noah: Camera2D = $Camera_Noah


static var doors_active : bool = true

func switch_to() -> void:
	camera_noah.make_current()


func _physics_process(delta: float) -> void:

	if Input.is_action_pressed("up"):
		velocity.y = -1
	elif Input.is_action_pressed("down"):
		velocity.y = 1
	else:
		velocity.y = 0
	if Input.is_action_pressed("left"):
		velocity.x = -1
		sprite.flip_h = false
	elif Input.is_action_pressed("right"):
		velocity.x = 1
		sprite.flip_h = true
	else:
		velocity.x = 0
	
	velocity = velocity.normalized()
	velocity = velocity * SPEED

	move_and_collide(velocity)
	
	if velocity.x != 0 || velocity.y != 0:
		sprite.play("walking")
	else:
		sprite.play("idle")

static func enable_doors(boolean) -> void:
	doors_active = boolean
	
static func get_doors_enabled() -> bool:
	return doors_active 
