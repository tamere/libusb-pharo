accessing - libusb
portNumbers
	| arrayPorts result ports |
	arrayPorts := (FFIExternalArray externalNewType: 'uint8' size: 7)
							autoRelease. 
	result := self libusb
					libusbGetPortNumbersForDevice: self
					portNumbersArray: arrayPorts
					length: 7.
	
	result = LUErrorEnumeration LIBUSB_ERROR_OVERFLOW
		ifTrue: [ self libusbErrorCode: result ].
	
	ports := OrderedCollection new.
	1 to: result do: [ :i |
		ports add: (arrayPorts at: i) ].
	
	^ ports