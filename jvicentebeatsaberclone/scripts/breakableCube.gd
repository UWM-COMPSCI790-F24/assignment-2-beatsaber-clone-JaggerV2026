extends Node3D

var SPEED = 5.0
var posChange
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	posChange = (SPEED * delta)
	global_position.z = global_position.z + posChange
	if(global_position.z > 10.0):
		queue_free()
