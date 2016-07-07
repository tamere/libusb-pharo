device handling/enumeration
libusbDetachKernelDriverFor: aLUDeviceHandle atInterfaceNumber: anInteger
	^ self ffiCall: #(LUErrorEnumeration libusb_detach_kernel_driver (
								LUDeviceHandle *aLUDeviceHandle,
								int anInteger))