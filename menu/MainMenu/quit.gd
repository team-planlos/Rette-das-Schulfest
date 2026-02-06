extends Node2D

@onready var menu: Node2D = $".."
@onready var sel_def: Sprite2D = $Sel_def


func get_x() -> int:
	return 0

func get_y() -> int:
	return -2

func _ready():
	menu.buttons.append(self)

func act():
	get_tree().quit(1)

func get_sel_def() -> Sprite2D:
	return sel_def
