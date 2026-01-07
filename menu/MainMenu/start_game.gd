extends Node2D

@onready var menu: Node2D = $".."


func get_x() -> int:
	return 0

func get_y() -> int:
	return 0

func _ready():
	menu.buttons.append(self)

func act():
	SceneManager.transition_to_scene("E14")
	Noah.position.x = -72
	Noah.position.y = -32
	Noah.switch_to()
