open device
openDeviceWithVid: vendorId pid: productId forContext: aLUContext
	<libusbHighlevelFor: #libubOpenDeviceForContext:withVid:pid:>
	^ self libusb
			libubOpenDeviceForContext: aLUContext withVid: vendorId pid: productId