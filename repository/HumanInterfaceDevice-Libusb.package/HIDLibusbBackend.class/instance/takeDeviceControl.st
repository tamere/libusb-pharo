taking device control
takeDeviceControl
	libusbDeviceHandle autoDetachKernelDriver: true.
	self
		claimInterfaces