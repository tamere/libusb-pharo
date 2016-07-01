device handling/enumeration
libusbGetDeviceAddress: aLUDevice
	^ self ffiCall: #(uint8_t libusb_get_device_address (LUDevice *aLUDevice))