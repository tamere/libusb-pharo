miscellaneous
libusbSetLocal: aString
	^ self ffiCall: #(int libusb_setlocale (String aString))