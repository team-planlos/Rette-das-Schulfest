extends Node2D

@onready var door_left: Area2D = $DoorLeft
@onready var door_right: Area2D = $DoorRight


func use_door(door : Area2D):
	if door == door_left:
		SceneManager.transition_to_scene("116")
		Noah.position.x = 170
		Noah.position.y = 12
	if door == door_right:
		SceneManager.transition_to_scene("117")
		Noah.position.x = 180
		Noah.position.y = 90
