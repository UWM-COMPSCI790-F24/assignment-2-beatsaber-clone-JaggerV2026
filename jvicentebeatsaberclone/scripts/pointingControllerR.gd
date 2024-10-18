extends XRController3D

@onready var line_renderer_r: MeshInstance3D = $Area3D/LineRendererR
@onready var right_beam: Area3D = $rightBeam

var beamVisible = true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed(name: String) -> void:
	if(name == "ax_button"):
		if (beamVisible):
			right_beam.visible = false
			beamVisible = false
		else:
			right_beam.visible = true
			beamVisible = true
