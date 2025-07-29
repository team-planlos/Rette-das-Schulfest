extends CharacterBody2D


const SPEED = 30.0
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var doors_active : bool = true


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

	move_and_slide()
	
	if velocity.x != 0 || velocity.y != 0:
		sprite.play("walking")
	else:
		sprite.play("idle")

func enable_doors(bool) -> void:
	doors_active = bool
	
func get_doors_enabled() -> bool:
	return doors_active 
