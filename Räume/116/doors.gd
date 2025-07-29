extends Node2D

@onready var door_117: Area2D = $"Door-117"
@onready var door_gang: Area2D = $"Door-Gang"
@onready var door_mini: Area2D = $"Door-Mini"



func use_door(door : Area2D):
	if door == door_117:
		SceneManager.transition_to_scene("117")
	if door == door_gang:
		SceneManager.transition_to_scene("C15")
	if door == door_mini:
		SceneManager.transition_to_scene("C15")
