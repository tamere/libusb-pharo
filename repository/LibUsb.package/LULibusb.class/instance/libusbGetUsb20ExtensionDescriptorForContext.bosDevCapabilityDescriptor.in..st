usb descriptors
libusbGetUsb20ExtensionDescriptorForContext: aLUContext bosDevCapabilityDescriptor: aLUBOSDevCapabilityDescriptor in: anExternalAddress
	^ self ffiCall: #(int libusb_get_usb_2_0_extension_descriptor(
								LUContext aLUContext,
								LUBOSDevCapabilityDescriptor *aLUBOSDevCapabilityDescriptor,
								ExternalAddress ** anExternalAddress))