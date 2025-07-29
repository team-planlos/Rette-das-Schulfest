extends Node

var scenes : Dictionary = { "E14": "res://Räume/E14/E14.tscn",
							"116": "res://Räume/116/116.tscn",
							"A01": "res://Räume/A01/A01.tscn",
							"B23": "res://Räume/B23/B23.tscn",
							"C15": "res://Räume/C15/C15.tscn"}

func transition_to_scene(raum : String):
	var scene_path : String = scenes.get(raum)
	
	if scene_path != null:
		get_tree().change_scene_to_file(scene_path)
	
	await get_tree().create_timer(10).timeout
