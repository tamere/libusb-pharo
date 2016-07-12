usb descriptors
libusbFreeUsb20ExtensionDescriptor: aLUUsb20ExtensionDescriptor
	^ self ffiCall: #(void libusb_free_usb_2_0_extension_descriptor(
								LUUsb20ExtensionDescriptor * aLUUsb20ExtensionDescriptor))