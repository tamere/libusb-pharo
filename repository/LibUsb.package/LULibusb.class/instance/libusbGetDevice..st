device handling/enumeration
libusbGetDevice: aLUDeviceHandle
	^ self ffiCall: #(LUDevice* libusb_get_device(LUDeviceHandle * aLUDeviceHandle))