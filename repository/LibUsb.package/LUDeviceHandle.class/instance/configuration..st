accessing - libusb
configuration: anInteger
	| result |
	result := self libusb
					libusbSetConfiguration: anInteger for: self.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].