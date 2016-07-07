device handling/enumeration
libusbAttachKernelDriverFor: aLUDeviceHandle atInterfaceNumber: anInteger
	^ self ffiCall: #(LUErrorEnumeration libusb_attach_kernel_driver (
								LUDeviceHandle *aLUDeviceHandle,
								int anInteger))