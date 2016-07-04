device handling/enumeration
libusbGetDeviceListContext: aLUContext devices: aList
	" To get LUDevice instances in an array use the following code:
	arrayPtr := ExternalAddress new.
	size := LULibusb uniqueInstance
				libusbGetDeviceListContext: context devices: arrayPtr.
	array := FFIExternalArray fromHandle: arrayPtr type: LUDevice size: size.
	"
	^ self ffiCall: #(ssize_t libusb_get_device_list (LUContext aLUContext, void **aList))