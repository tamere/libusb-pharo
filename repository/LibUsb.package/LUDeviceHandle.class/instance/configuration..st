accessing - libusb
configuration: anInteger
	<libusbHighlevelFor: #libusbSetConfiguration:for:>
	| result |
	result := self libusb
					libusbSetConfiguration: anInteger for: self.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].