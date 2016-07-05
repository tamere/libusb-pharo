instance creation
new
	| instance result |
	instance := super new.
	result := self libusb
					libusbInitContext: instance.
	(result = LUErrorEnumeration LIBUSB_SUCCESS)
		ifFalse: [ self libusbErrorCode: result ].
	^ instance