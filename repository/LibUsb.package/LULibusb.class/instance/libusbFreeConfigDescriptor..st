usb descriptors
libusbFreeConfigDescriptor: aLUConfigDescriptor

	^ self ffiCall: #(void libusb_free_config_descriptor(LUConfigDescriptor *aLUConfigDescriptor))