miscellaneous
libusbHasCapability: anInteger
	^ self ffiCall: #(int libusb_has_capability (uint32_t anInteger))