device handling/enumeration
libubClearHaltFor: aLUDeviceHandle endpoint: endpoint
	^ self ffiCall: #(LUErrorEnumeration libusb_clear_halt (LUDeviceHandle * aLUDeviceHandle, uchar endpoint))