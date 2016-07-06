usb descriptors
libusbGetConfigDescriptorForDevice: aLUDevice at: index in: anExternalAddress

	^ self ffiCall: #(LUErrorEnumeration libusb_get_config_descriptor (LUDevice *aLUDevice, uint8 index, ExternalAddress **anExternalAddress))