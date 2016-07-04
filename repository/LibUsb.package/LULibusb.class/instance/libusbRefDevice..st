device handling/enumeration
libusbRefDevice: aLUDevice
	^ self ffiCall: #(LUDevice* libusb_ref_device(LUDevice * aLUDevice))