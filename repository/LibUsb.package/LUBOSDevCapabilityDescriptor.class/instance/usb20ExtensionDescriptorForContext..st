accessing - libusb
usb20ExtensionDescriptorForContext: aLUContext
	<libusbHighlevelFor: #libusbGetUsb20ExtensionDescriptorForContext:bosDevCapabilityDescriptor:in:>
	| address result |
	address := ExternalAddress new.
	result := self libusb
					libusbGetUsb20ExtensionDescriptorForContext: aLUContext pointer bosDevCapabilityDescriptor: self in: address.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	
	^ LUUsb20ExtensionDescriptor fromHandle: address 