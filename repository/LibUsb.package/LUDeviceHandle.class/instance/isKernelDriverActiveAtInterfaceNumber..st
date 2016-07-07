kernel driver
isKernelDriverActiveAtInterfaceNumber: anInteger
	<libusbHighlevelFor: #libusbKernelDriverActiveFor:atInterfaceNumber:>
	| result |
	result := self libusb
					libusbKernelDriverActiveFor: self atInterfaceNumber: anInteger.
	
	(result = LUErrorEnumeration LIBUSB_SUCCESS or: [ result value = 1 ])
		ifFalse: [ self libusbErrorCode: result ].
	
	^ result value = 1