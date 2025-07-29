extends Node2D

@onready var door_left: Area2D = $"Door-left"
@onready var door_right: Area2D = $"Door-right"

func use_door(door : Area2D):
	if door == door_left:
		SceneManager.transition_to_scene("A01")
	if door == door_right:
		SceneManager.transition_to_scene("C15")
