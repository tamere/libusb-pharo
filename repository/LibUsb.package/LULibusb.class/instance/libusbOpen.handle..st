device handling/enumeration
libusbOpen: aLUDevice handle: aLUDeviceHandle
	^ self ffiCall: #(LUErrorEnumeration libusb_open(LUDevice * aLUDevice, LUDeviceHandle ** aLUDeviceHandle))