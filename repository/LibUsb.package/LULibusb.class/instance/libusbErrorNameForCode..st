miscellaneous
libusbErrorNameForCode: enumValue
	^ self ffiCall: #(String libusb_error_name (LUErrorEnumeration enumValue))