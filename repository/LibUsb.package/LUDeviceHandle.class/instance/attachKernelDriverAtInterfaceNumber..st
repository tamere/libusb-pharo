kernel driver
attachKernelDriverAtInterfaceNumber: anInteger
	<libusbHighlevelFor: #libusbAttachKernelDriverFor:atInterfaceNumber:>
	| result |
	result := self libusb
					libusbAttachKernelDriverFor: self atInterfaceNumber: anInteger.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ]