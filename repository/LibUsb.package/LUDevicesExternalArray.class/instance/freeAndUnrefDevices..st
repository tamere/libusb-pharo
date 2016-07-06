finalization
freeAndUnrefDevices: aBoolean
	<libusbHighlevelFor: #libusbFreeDeviceList:unrefDevices:>
	self libusb libusbFreeDeviceList: self unrefDevices: aBoolean