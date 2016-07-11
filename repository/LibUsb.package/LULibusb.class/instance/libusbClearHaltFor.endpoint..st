device handling/enumeration
libusbClearHaltFor: aLUDeviceHandle endpoint: endpoint
	^ self ffiCall: #(LUErrorEnumeration libusb_clear_halt (LUDeviceHandle * aLUDeviceHandle, uchar endpoint))