extends Area3D

@onready var cubeBreak: AudioStreamPlayer3D = $AudioStreamPlayer3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	set_collision_layer_value(1,true)
	set_collision_layer_value(2,true)
	



func _on_area_entered(area: Area3D) -> void:
	cubeBreak.playing = true
	await cubeBreak.finished
	cubeBreak.playing = false
	area.queue_free()
