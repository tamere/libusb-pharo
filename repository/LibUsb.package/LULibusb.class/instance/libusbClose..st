device handling/enumeration
libusbClose: aLUDeviceHandle
	^ self ffiCall: #(void libusb_close (LUDeviceHandle * aLUDeviceHandle))