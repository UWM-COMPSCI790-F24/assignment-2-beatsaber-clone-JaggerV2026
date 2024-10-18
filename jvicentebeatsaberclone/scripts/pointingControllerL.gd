extends XRController3D

@onready var line_renderer_l: MeshInstance3D = $LineRendererL
@onready var left_raycast: RayCast3D = $leftRaycast

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
			line_renderer_l.visible = false
			left_raycast.visible = false
			left_raycast.disable = true
			beamVisible = false
		else:
			line_renderer_l.visible = true
			left_raycast.visible = true
			left_raycast.disable = false
			beamVisible = true
