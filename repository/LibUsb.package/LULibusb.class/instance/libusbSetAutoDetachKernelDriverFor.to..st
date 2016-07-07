device handling/enumeration
libusbSetAutoDetachKernelDriverFor: aLUDeviceHandle to: aBoolean
	^ self ffiCall: #(LUErrorEnumeration libusb_set_auto_detach_kernel_driver	(
								LUDeviceHandle * aLUDeviceHandle,
								bool aBoolean))