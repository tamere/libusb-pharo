miscellaneous
libusbGetVersion
	^ self ffiCall: #(LUVersion* libusb_get_version (void))