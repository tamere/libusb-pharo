accessing - descriptor
configDescriptorByValue: aValue
	"The structure returned must be freed using LULibusb>>#libusbFreeConfigDescriptor:."
	| address result |
	address := ExternalAddress new.
	result := self libusb
		libusbGetConfigDescriptorForDevice: self byValue: aValue in: address.
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	
	^ LUConfigDescriptor fromHandle: address