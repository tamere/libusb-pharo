accessing - libusb
stringDescriptorAscciAt: anIndex ofSize: anInteger
	| array str result |
	array := FFIExternalArray newType: 'char' size: anInteger.
	result := LULibusb uniqueInstance
		libusbGetStringDescriptorAscciForDeviceHandle: self at: anIndex in: array ofLength: anInteger.
	
	result < 0
		ifTrue: [ self libusbErrorCode: result ].
	
	str := String streamContents: [ :stream |
		1 to: result do: [ :i |
			stream << (array at: i) ] ].
	array free.
	^ str