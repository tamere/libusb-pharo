accessing - descriptor
configDescriptorAt: index
	"The structure returned must be freed using LULibusb>>#libusbFreeConfigDescriptor:."
	<libusbHighlevelFor: #libusbGetConfigDescriptorForDevice:at:in:>
	| address result |
	address := ExternalAddress new.
	result := self libusb
		libusbGetConfigDescriptorForDevice: self at: index in: address.
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	
	^ LUConfigDescriptor fromHandle: address