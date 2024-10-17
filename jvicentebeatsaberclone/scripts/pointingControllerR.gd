extends XRController3D

@onready var line_renderer_r: MeshInstance3D = $Area3D/LineRendererR

var beamVisible = true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	line_renderer_r.points[0] = global_position + (-global_basis.z * 0.05)
	line_renderer_r.points[1] = (-global_basis.z * 1) + line_renderer_r.points[0]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	line_renderer_r.points[0] = global_position + (-global_basis.z * 0.05)
	line_renderer_r.points[1] = (-global_basis.z * 1) + line_renderer_r.points[0]
	

func _on_button_pressed(name: String) -> void:
	if(name == "ax_button"):
		if (beamVisible):
			line_renderer_r.visible = false
			beamVisible = false
		else:
			line_renderer_r.visible = true
			beamVisible = true
