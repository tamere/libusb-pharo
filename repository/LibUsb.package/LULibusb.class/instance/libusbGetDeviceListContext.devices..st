device handling/enumeration
libusbGetDeviceListContext: aLUContext devices: aList
	^ self ffiCall: #(ssize_t libusb_get_device_list (LUContext aLUContext, void **aList))