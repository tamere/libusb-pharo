device handling/enumeration
libusbGetDeviceListContext: aLUContext devices: aList
	"
	arrayPtr := ExternalAddress new.
	size := LULibusb uniqueInstance
				libusbGetDeviceListContext: context devices: arrayPtr.
	array := FFIExternalArray fromPointer: arrayPtr type: LUDevice size: size.
	"
	^ self ffiCall: #(ssize_t libusb_get_device_list (LUContext aLUContext, void **aList))