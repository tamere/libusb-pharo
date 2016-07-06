usb descriptors
libusbGetActiveConfigDescriptorForDevice: aLUDevice in: anExternalAddress

	^ self ffiCall: #(LUErrorEnumeration libusb_get_active_config_descriptor (LUDevice *aLUDevice, ExternalAddress ** anExternalAddress))