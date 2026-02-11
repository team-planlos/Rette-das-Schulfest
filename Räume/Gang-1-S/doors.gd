extends Node2D

@onready var door_116: Area2D = $"Door-116"
@onready var door_117: Area2D = $"Door-117"
@onready var door_118: Area2D = $"Door-118"


func use_door(door : Area2D):
	if door == door_116:
		SceneManager.transition_to_scene("116")
		Noah.position.x = 170
		Noah.position.y = 12
	if door == door_117:
		SceneManager.transition_to_scene("117")
		Noah.position.x = 185
		Noah.position.y = 95
	if door == door_118:
		SceneManager.transition_to_scene("118")
		Noah.position.x = 184
		Noah.position.y = 95
