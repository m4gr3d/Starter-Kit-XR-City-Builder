extends XROrigin3D

# Used to set up the XR scene.
func _ready() -> void:
	var xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.initialize():
		# Enable XR on the viewport
		var viewport = get_viewport()
		viewport.use_xr = true
		
		# Disable VSYNC
		DisplayServer.window_get_vsync_mode(DisplayServer.VSYNC_DISABLED)
		
