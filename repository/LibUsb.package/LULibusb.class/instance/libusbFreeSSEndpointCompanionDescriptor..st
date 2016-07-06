usb descriptors
libusbFreeSSEndpointCompanionDescriptor: aLUSSEndpointCompanionDescriptor
	^ self
		ffiCall: #(void libusb_free_ss_endpoint_companion_descriptor(
					LUSSEndpointCompanionDescriptor* 	aLUSSEndpointCompanionDescriptor))