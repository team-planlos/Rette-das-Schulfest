extends Node2D

@onready var door_gang: Area2D = $"Door-white"

func use_door(door : Area2D):
	if door == door_gang:
		SceneManager.transition_to_scene("Gang-1-S")
		Noah.position.x = 184
		Noah.position.y = -45
