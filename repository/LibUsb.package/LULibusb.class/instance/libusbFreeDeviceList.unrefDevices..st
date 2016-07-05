device handling/enumeration
libusbFreeDeviceList: devices unrefDevices: aBoolean
	^ self ffiCall: #(void libusb_free_device_list (LUDevice *devices, bool aBoolean))