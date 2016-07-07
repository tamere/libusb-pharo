device handling/enumeration
libusbKernelDriverActiveFor: aLUDeviceHandle atInterfaceNumber: anInteger
	^ self ffiCall: #(LUErrorEnumeration libusb_kernel_driver_active(
								LUDeviceHandle *aLUDeviceHandle,
								int	 anInteger))