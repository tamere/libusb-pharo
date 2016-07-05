accessing - libusb
descriptor
	| descriptor result |
	descriptor := LUDeviceDescriptor new.
	result := self libusb
					libusbGetDevice: self descriptor: descriptor.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	
	^ descriptor