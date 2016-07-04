device handling/enumeration
libusbUnrefDevice: aLUDevice
	^ self ffiCall: #(LUDevice* libusb_unref_device(LUDevice * aLUDevice))