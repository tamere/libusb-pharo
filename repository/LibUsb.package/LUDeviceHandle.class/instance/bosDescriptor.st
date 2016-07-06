accessing - libusb
bosDescriptor
	| address result |
	address := ExternalAddress new.
	result := self libusb
					libusbGetBOSdescriptorFor: self in: address.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	
	^ LUBOSDescriptor fromHandle: address