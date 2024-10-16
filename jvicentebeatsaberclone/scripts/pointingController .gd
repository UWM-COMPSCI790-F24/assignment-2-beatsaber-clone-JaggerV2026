extends XRController3D

var beamVisible = true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$"LineRenderer".points[0] = global_position + (-global_basis.z * 0.05)
	$"LineRenderer".points[1] = (-global_basis.z * 1) + $"LineRenderer".points[0]
	

func _on_button_pressed(name: String) -> void:
	if(name == "ax_button"):
		if (beamVisible):
			$"LineRenderer".visible = false
			beamVisible = false
		else:
			$"LineRenderer".visible = true
			beamVisible = true
