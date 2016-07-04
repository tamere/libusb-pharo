miscellaneous
libusbHasCapability: enumValue
	^ self ffiCall: #(int libusb_has_capability (LUCapabilityEnumeration enumValue))