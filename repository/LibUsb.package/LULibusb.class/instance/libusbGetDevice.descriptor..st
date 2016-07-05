usb descriptors
libusbGetDevice: aLUDevice descriptor: aLUDeviceDescriptor
	^ self ffiCall: #(LUErrorEnumeration libusb_get_device_descriptor (LUDevice *aLUDevice, LUDeviceDescriptor * aLUDeviceDescriptor))