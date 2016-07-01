device handling/enumeration
libusbFreeDeviceList: devices unrefDevices: anInteger
	^ self ffiCall: #(void libusb_free_device_list (LUDevice *devices, int anInteger))