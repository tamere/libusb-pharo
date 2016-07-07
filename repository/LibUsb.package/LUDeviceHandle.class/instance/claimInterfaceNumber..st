claiming / releasing interface
claimInterfaceNumber: anInteger
	"Interfaces are numbered from 0 to n-1 (with n the number of interfaces)."
	<libusbHighlevelFor: #libusbClaimInterfaceNumber:for:>
	| result |
	result := self libusb libusbClaimInterfaceNumber: anInteger for: self.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].