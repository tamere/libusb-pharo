device handling/enumeration
libusbResetDevice: aLUDeviceHandle
	^ self ffiCall: #(LUErrorEnumeration libusb_reset_device(LUDeviceHandle * aLUDeviceHandle))