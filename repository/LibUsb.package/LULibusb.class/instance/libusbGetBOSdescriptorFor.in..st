usb descriptors
libusbGetBOSdescriptorFor: aLUDeviceHandle in: anExternalAddress
	^ self ffiCall: #(LUErrorEnumeration libusb_get_bos_descriptor(LUDeviceHandle * aLUDeviceHandle, ExternalAddress ** anExternalAddress))