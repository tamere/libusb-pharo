device handling/enumeration
libusbGetDeviceSpeed: aLUDevice
	^ self ffiCall: #(LUSpeedEnumeration libusb_get_device_speed (LUDevice *aLUDevice))