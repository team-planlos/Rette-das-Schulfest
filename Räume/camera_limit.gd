extends StaticBody2D


@onready var camera = get_node("/root/Noah/Camera_Noah") as Camera2D

@onready var bottom: CollisionShape2D = $bottom
@onready var top: CollisionShape2D = $top
@onready var left: CollisionShape2D = $left
@onready var right: CollisionShape2D = $right


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var x1 = int(left.global_position.x)
	var x2 = int(right.global_position.x)
	var y1 = int(top.global_position.y)
	var y2 = int(bottom.global_position.y)

	# min() nimmt immer den kleineren Wert, max() den größeren
	camera.limit_left = min(x1, x2)
	camera.limit_right = max(x1, x2)
	camera.limit_top = min(y1, y2)
	camera.limit_bottom = max(y1, y2)
	
	print("Limits -> Left: ", camera.limit_left, " Right: ", camera.limit_right, " Top: ", camera.limit_top, " Bottom: ", camera.limit_bottom)
	print("Kamera Pos: ", camera.global_position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
