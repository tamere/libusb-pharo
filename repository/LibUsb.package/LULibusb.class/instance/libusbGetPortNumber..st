device handling/enumeration
libusbGetPortNumber: aLUDevice
	^ self ffiCall: #(uint8_t libusb_get_port_number (LUDevice *aLUDevice))