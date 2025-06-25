extends Node

var scenes : Dictionary = { "E14": "res://scenes/Räume/E14.tscn",
							"116": "res://scenes/Räume/116.tscn"}

func transition_to_scene(raum : String):
	var scene_path : String = scenes.get(raum)
	
	if scene_path != null:
		get_tree().change_scene_to_file(scene_path)
