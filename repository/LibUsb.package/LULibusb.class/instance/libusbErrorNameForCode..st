miscellaneous
libusbErrorNameForCode: anInteger
	^ self ffiCall: #(String libusb_error_name (int anInteger))