accessing - libusb
portNumbers
	| arrayPorts result |
	arrayPorts := (FFIExternalArray externalNewType: 'uint8' size: 7)
							autoRelease. 
	result := self libusb
					libusbGetPortNumbersForDevice: self
					portNumbersArray: arrayPorts
					length: 7.
	
	result = LUErrorEnumeration LIBUSB_ERROR_OVERFLOW
		ifTrue: [ self libusbErrorCode: result ].
	
	self flag: #TODO. "Trim the array according to the number of element filled."
	
	^ arrayPorts