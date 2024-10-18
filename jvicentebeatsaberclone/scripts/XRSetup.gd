extends XROrigin3D

var xr_interface : XRInterface
var yPos
signal pose_recentered
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR initialized successfully")
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		get_viewport().use_xr = true
		xr_interface.pose_recentered.connect(_on_openxr_pose_recentered)
		yPos = global_position.y
	else:
		print("OpenXR not initialized. Please check if your headset is connected")
		
func _on_openxr_pose_recentered() -> void:
	XRServer.center_on_hmd(XRServer.RESET_BUT_KEEP_TILT,true)
	global_position.y = yPos
