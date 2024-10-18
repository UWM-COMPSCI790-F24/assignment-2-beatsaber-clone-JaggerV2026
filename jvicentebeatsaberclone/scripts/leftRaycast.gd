extends RayCast3D

@onready var cubeBreak: AudioStreamPlayer3D = $AudioStreamPlayer3D

var start
var end
var collider
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	start = position + (-basis.z * 0.05)
	end = (-basis.z * 1) + start
	target_position = end
	if(is_colliding()):
		cubeBreak.playing = true
		await cubeBreak.finished
		cubeBreak.playing = false
		collider = get_collider()
		collider.left_cube.queue_free()
