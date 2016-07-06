usb descriptors
libusbGetConfigDescriptorForDevice: aLUDevice byValue: bConfigurationValue in: anExternalAddress

	^ self ffiCall: #(int libusb_get_config_descriptor_by_value (LUDevice *aLUDevice, uint8 bConfigurationValue, ExternalAddress **anExternalAddress))