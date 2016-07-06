usb descriptors
libusbGetActiveConfigDescriptorForDevice: aLUDevice in: anExternalAddress
	"
	handle := ExternalAddress new.
	LULibusb uniqueInstance
		libusbGetActiveConfigDescriptorForDevice: device in: handle.
	configDescriptor := LUConfigDescriptor fromHandle: handle.
	"
	^ self ffiCall: #(int libusb_get_active_config_descriptor (LUDevice *aLUDevice, ExternalAddress ** anExternalAddress))