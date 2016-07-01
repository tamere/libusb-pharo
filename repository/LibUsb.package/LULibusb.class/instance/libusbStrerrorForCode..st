miscellaneous
libusbStrerrorForCode: anInteger
	^ self ffiCall: #(String libusb_strerror (int anInteger))