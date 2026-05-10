@tool
extends Node2D

@onready var sprite: Sprite2D = $Sprite2D
@onready var collision_shape: CollisionShape2D = $CollisionShape2D


@export var building: String = "Neubau":
	set(value):
		building = value
		if Engine.is_editor_hint():
			_ready()

@export var door_type: String = "white":
	set(value):
		door_type = value
		if Engine.is_editor_hint():
			_ready()

@export var orientation: String = "top":
	set(value):
		orientation = value
		if Engine.is_editor_hint():
			_ready()
var orientations = ["top", "left", "bottom", "right"]

@export var dest_room: String
@export var dest_x: int
@export var dest_y: int

var is_open = false
var door_texture: Resource
var default_frame: int 
var player_entered: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var texture_path = "res://assets/sprites/world/%s-%s_door.png" % [building, door_type]
	door_texture = load(texture_path)
	for i in len(orientations):
		if (orientations[i] == orientation):
			default_frame = i * 2
			collision_shape.global_rotation_degrees = -90 * i
			break
	if default_frame == null: 
		push_error("Couldn't load %s. Invalid orientation." % self.name)
		return
	
	if door_texture == null:
		push_error("Texture not found: %s" % texture_path)
		return
	
	update_door()


func update_door():
	var frame: int = default_frame if !player_entered else default_frame + 1
	var atlas = AtlasTexture.new()
	atlas.atlas = door_texture
	atlas.region = Rect2i(frame * 17, 0, 16, 16)
	sprite.texture = atlas


func _on_body_exited(_body: CharacterBody2D) -> void:
	player_entered = false
	is_open = false
	update_door()

func _on_body_entered(_body: CharacterBody2D) -> void:
	player_entered = true
	is_open = true
	update_door()

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("action") && player_entered && Noah.get_doors_enabled(): 
		SceneManager.transition_to_scene(dest_room)
		Noah.position.x = dest_x
		Noah.position.y = dest_y
