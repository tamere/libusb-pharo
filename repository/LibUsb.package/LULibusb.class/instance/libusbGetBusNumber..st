device handling/enumeration
libusbGetBusNumber: aLUDevice
	^ self ffiCall: #(uint8_t libusb_get_bus_number (LUDevice *aLUDevice))