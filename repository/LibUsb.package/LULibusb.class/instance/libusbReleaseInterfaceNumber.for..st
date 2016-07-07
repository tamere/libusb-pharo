device handling/enumeration
libusbReleaseInterfaceNumber: anInteger for: aLUDeviceHandle
	^ self ffiCall: #(LUErrorEnumeration libusb_release_interface (
								LUDeviceHandle *aLUDeviceHandle,
								int anInteger))