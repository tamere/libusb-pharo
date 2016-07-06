devices enumeration
allDevicesForContext: aLUContext
	<libusbHighlevelFor: #libusbGetDeviceListContext:devices:>
	| arrayPtr size |
	arrayPtr := ExternalAddress new.
	size := self libusb
                libusbGetDeviceListContext: aLUContext devices: arrayPtr.

	^ LUDevicesExternalArray fromHandle: arrayPtr size: size.