extends XRController3D

@onready var line_renderer_l: MeshInstance3D = $Area3D/LineRendererL
@onready var left_beam: Area3D = $leftBeam

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
			left_beam.visible = false
			beamVisible = false
		else:
			left_beam.visible = true
			beamVisible = true
