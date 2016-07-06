opening
open
	"Returns a LUDeviceHandle for this device by calling libusb_open.
	 It must be freed by sending #exit message to it."
	<libusbHighlevelFor: #libusbOpen:handle:>
	| result deviceHandle |
	deviceHandle := LUDeviceHandle new.
	result := self libusb
						libusbOpen: self handle: deviceHandle.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	
	^ deviceHandle