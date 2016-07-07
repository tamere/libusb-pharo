kernel driver
autoDetachKernelDriver: aBoolean
	<libusbHighlevelFor: #libusbSetAutoDetachKernelDriverFor:to:>
	| result |
	result := self libusb
						libusbSetAutoDetachKernelDriverFor: self to: aBoolean.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ]