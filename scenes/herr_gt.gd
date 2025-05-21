extends CharacterBody2D

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 10
const RANGE = 200
var i = RANGE/2

func _process(delta: float) -> void:
	if(i >= 0 && i < RANGE):
		sprite.flip_h = true
		position.x += SPEED * delta
		i += 1
	elif(i < 0):
		sprite.flip_h = false
		position.x -= SPEED * delta
		i += 1
	elif(i == RANGE):
		i = -RANGE
