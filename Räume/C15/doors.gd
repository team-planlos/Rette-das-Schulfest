extends Node2D

@onready var door_entry: Area2D = $"Door-entry"
@onready var door_exit: Area2D = $"Door-exit"

func use_door(door : Area2D):
	if door == door_entry:
		SceneManager.transition_to_scene("B23")
	if door == door_exit:
		SceneManager.transition_to_scene("116")
