claiming / releasing interface
releaseInterfaceNumber: anInteger
	"Interfaces are numbered from 0 to n-1 (with n the number of interfaces)."
	<libusbHighlevelFor: #libusbReleaseInterfaceNumber:for:>
	| result |
	result := self libusb libusbReleaseInterfaceNumber: anInteger for: self.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].