device handling/enumeration
libusbGetParent: aLUDevice
	^ self ffiCall: #(LUDevice* libusb_get_parent(LUDevice *aLUDevice))