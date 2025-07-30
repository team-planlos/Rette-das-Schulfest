extends Area2D

@onready var room: Node2D = $".."


var player_entered : bool = false
var enable_input : bool = true
@onready var sprite: Sprite2D = $Sprite2D


func _on_body_exited(body: CharacterBody2D) -> void:
	player_entered = false
	sprite.close()


func _on_body_entered(body: CharacterBody2D) -> void:
	player_entered = true
	sprite.open()

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("action") && player_entered && Noah.get_doors_enabled():
		room.use_door(self)
