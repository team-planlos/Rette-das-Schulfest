extends Node2D

@onready var camera_2d: Camera2D = $Camera2D

var x : int = 0
var y : int = 0

var buttons : Array


func _on_ready() -> void:
	camera_2d.make_current()
	for button in buttons:
		var button_x : int = button.get_x()
		var button_y : int = button.get_y()
		
		if (button_x == 0) && (button_y == 0):
			button.get_sel_def().show()

func _input(event: InputEvent) -> void:
	var old_x : int = x
	var old_y : int = y 
	
	if event.is_action_pressed("up"):
		y = y + 1
	elif event.is_action_pressed("down"):
		y = y - 1
	elif event.is_action_pressed("right"):
		x = x + 1
	elif event.is_action_pressed("left"):
		x = x - 1
	elif event.is_action_pressed("action"):
		for button in buttons:
			var button_x : int = button.get_x()
			var button_y : int = button.get_y()
			
			if (button_x == x) && (button_y == y):
				button.act()
				return
	else:
		return
	
	for button in buttons:
		var button_x : int = button.get_x()
		var button_y : int = button.get_y()
		
		if (button_x == old_x) && (button_y == old_y):
			button.get_sel_def().hide()
	
	for button in buttons:
		var button_x : int = button.get_x()
		var button_y : int = button.get_y()
		
		if (button_x == x) && (button_y == y):
			print("x: " + str(x))
			print("y: " + str(y))
			button.get_sel_def().show()
			return
	x = old_x
	y = old_y
	
