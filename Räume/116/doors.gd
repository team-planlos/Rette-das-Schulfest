extends Node2D

@onready var door_white: Area2D = $"Door-white"

func use_door(door : Area2D):
	SceneManager.transition_to_scene("E14")
