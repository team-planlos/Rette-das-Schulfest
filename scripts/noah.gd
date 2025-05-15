extends CharacterBody2D


const SPEED = 50.0
@onready var sprite: Sprite2D = $Sprite2D


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
	
	velocity = velocity * SPEED

	move_and_slide()
