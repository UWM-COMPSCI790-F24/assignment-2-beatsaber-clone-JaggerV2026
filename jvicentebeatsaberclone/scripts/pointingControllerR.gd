extends XRController3D

@onready var line_renderer_r: MeshInstance3D = $LineRendererR
@onready var right_raycast: RayCast3D = $rightRaycast

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
			line_renderer_r.visible = false
			right_raycast.visible = false
			beamVisible = false
		else:
			line_renderer_r.visible = true
			right_raycast.visible = true
			beamVisible = true
