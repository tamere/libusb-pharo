usb descriptors
libusbGetSSEndpointCompanionDescriptorInContext: aLUContext forEndpointDescriptor: aLUEndpointDescriptor in: anExternalAddress
	^ self
		ffiCall: #(LUErrorEnumeration libusb_get_ss_endpoint_companion_descriptor
							(LUContext aLUContext,
							LUEndpointDescriptor *aLUEndpointDescriptor,
							ExternalAddress **anExternalAddress))