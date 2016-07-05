opening
open
	"Returns a LUDeviceHandle for this device by calling libusb_open."
	| result deviceHandle |
	deviceHandle := LUDeviceHandle new.
	result := self libusb
						libusbOpen: self handle: deviceHandle.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	
	^ deviceHandle