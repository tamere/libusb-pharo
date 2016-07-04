miscellaneous
libusbStrerrorForCode: enumValue
	^ self ffiCall: #(String libusb_strerror (LUErrorEnumeration enumValue))