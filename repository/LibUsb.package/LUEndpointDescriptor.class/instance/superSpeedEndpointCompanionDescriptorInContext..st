accessing - libusb
superSpeedEndpointCompanionDescriptorInContext: aLUContext
	"Returns a LUSSEndpointCompanionDescriptor that needs to be freed
	 using LULibusb>>#libusbFreeSSEndpointCompanionDescriptor:"
	| address result |
	address := ExternalAddress new.
	result := self libusb
					libusbGetSSEndpointCompanionDescriptorInContext: aLUContext forEndpointDescriptor: self in: address.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	
	^ LUSSEndpointCompanionDescriptor fromHandle: address