accessing - descriptor
activeConfigDescriptor
	"The structure returned must be freed using LULibusb>>#libusbFreeConfigDescriptor:."
	<libusbHighlevelFor: #libusbGetActiveConfigDescriptorForDevice:>
	| address result |
	address := ExternalAddress new.
	result := self libusb
		libusbGetActiveConfigDescriptorForDevice: self in: address.
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	
	^ LUConfigDescriptor fromHandle: address