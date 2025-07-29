extends Node2D

@onready var door_116: Area2D = $"Door-116"
@onready var door_gang: Area2D = $"Door-gang"

func use_door(door : Area2D):
	if door == door_116:
		SceneManager.transition_to_scene("116")
		Noah.position.x = 180
		Noah.position.y = 8
	if door == door_gang:
		SceneManager.transition_to_scene("E14")
		Noah.position.x = 72
		Noah.position.y = -32
