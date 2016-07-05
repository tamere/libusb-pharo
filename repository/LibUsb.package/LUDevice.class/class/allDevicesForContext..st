devices enumeration
allDevicesForContext: aLUContext
	| arrayPtr size |
	arrayPtr := ExternalAddress new.
	size := self libusb
                libusbGetDeviceListContext: aLUContext devices: arrayPtr.

	^ LUDevicesExternalArray fromHandle: arrayPtr size: size.