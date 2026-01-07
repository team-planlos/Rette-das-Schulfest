extends Node2D

var x : int = 0
var y : int = 0

var buttons : Array


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


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
	else:
		return
	
	for button in buttons:
		var button_x : int = button.get_x()
		var button_y : int = button.get_y()
		
		if (button_x == x) && (button_y == y):
			button.act()
			return
	x = old_x
	y = old_y
