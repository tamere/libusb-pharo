usb descriptors
libusbFreeBOSdescriptor: aLUBOSDescriptor
	^ self ffiCall: #(void libusb_free_bos_descriptor	(LUBOSDescriptor * aLUBOSDescriptor))