device handling/enumeration
libusbGetDeviceSpeed: aLUDevice
	^ self ffiCall: #(int libusb_get_device_speed (LUDevice *aLUDevice))