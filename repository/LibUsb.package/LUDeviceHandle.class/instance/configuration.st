accessing - libusb
configuration
	| config result |
	config := LUIntegerValueHolder new.
	result := LULibusb uniqueInstance
					libusbGetConfiguration: config for: self.
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	^ config value