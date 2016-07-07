kernel driver
detachKernelDriverAtInterfaceNumber: anInteger
	<libusbHighlevelFor: #libusbDetachKernelDriverFor:atInterfaceNumber:>
	| result |
	result := self libusb
					libusbDetachKernelDriverFor: self atInterfaceNumber: anInteger.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ]