extends Area3D

@onready var cubeBreak: AudioStreamPlayer3D = $AudioStreamPlayer3D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cubeBreak.playing = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
