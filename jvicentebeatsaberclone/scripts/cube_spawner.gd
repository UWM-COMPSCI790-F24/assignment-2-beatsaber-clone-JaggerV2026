extends Node3D

var xPos = global_position.x
var yPos = global_position.y
var z_pos = global_position.z
var spawnInterval = 1.0
var timeElapsed = 0.0
var rng
var randomX
var randomY
var cube
const LEFT_CUBE = preload("res://Scenes/left_cube.tscn")
const RIGHT_CUBE = preload("res://Scenes/right_cube.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rng = RandomNumberGenerator.new()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timeElapsed = timeElapsed + delta
	randomX = rng.randf_range(-0.5,0.5)
	randomY = rng.randf_range(-0.5,0.5)
	if(timeElapsed >= spawnInterval):
		timeElapsed = 0.0
		if(rng.randi_range(0,1) == 0): #Left cube. I don't think the floor is necessary
			cube = LEFT_CUBE.instantiate()
			cube.position.x = cube.position.x + randomX
			cube.position.y = cube.position.y + randomY
			add_child(cube)
		else: #Right cube
			cube = RIGHT_CUBE.instantiate()
			cube.position.x = cube.position.x + randomX
			cube.position.y = cube.position.y + randomY
			add_child(cube)
