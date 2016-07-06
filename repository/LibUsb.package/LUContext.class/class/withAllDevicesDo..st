doing
withAllDevicesDo: aBlock
    "This method creates a new LUContext, collect the devices available
	  and evaluate the block with these two parameters (first context,
	  second device).
     It ensures that the context and the devices are freed correctly."
	self withNewContextDo: [ :context |
		| devices |
		devices := LUDevice allDevicesForContext: context.
		[ aBlock value: context value: devices ]
			ensure: [ devices freeAndUnrefDevices ] ]