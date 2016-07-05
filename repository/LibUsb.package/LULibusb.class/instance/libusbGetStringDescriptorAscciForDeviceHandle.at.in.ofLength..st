usb descriptors
libusbGetStringDescriptorAscciForDeviceHandle: aLUDeviceHandle at: index in: anExternalArray ofLength: aLength
	^ self ffiCall: #(int libusb_get_string_descriptor_ascii(LUDeviceHandle * aLUDeviceHandle, uint8 index, FFIExternalArray anExternalArray, int aLength))