device handling/enumeration
libusbSetConfiguration: anInteger for: aLUDeviceHandle
	^ self ffiCall: #(LUErrorEnumeration libusb_set_configuration(LUDeviceHandle * aLUDeviceHandle, int anInteger))