extends Node2D

@onready var door_white: Area2D = $"Door-white"
@onready var door_wood: Area2D = $"Door-wood"

func use_door(door : Area2D):
	if door == door_white:
		SceneManager.transition_to_scene("B23")
	if door == door_wood:
		SceneManager.transition_to_scene("E14")