device handling/enumeration
libusbGetConfiguration: aLUIntegerValueHolder for: aLUDeviceHandle
	^ self ffiCall: #(LUErrorEnumeration libusb_get_configuration(LUDeviceHandle * aLUDeviceHandle, LUIntegerValueHolder * aLUIntegerValueHolder))