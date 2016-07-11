open device
openDeviceWithVid: vendorId pid: productId forContext: aLUContext
	<libusbHighlevelFor: #libusbOpenDeviceForContext:withVid:pid:>
	^ self libusb
			libusbOpenDeviceForContext: aLUContext withVid: vendorId pid: productId