device handling/enumeration
libusbGetPortNumbersForDevice: aLUDevice portNumbersArray: anArray length: arrayLength
	"
	arrayPorts := (FFIExternalArray externalNewType: 'uint8' size: 7) autoRelease. 
	LULibusb uniqueInstance
		libusbGetPortNumbersForDevice: device portNumbersArray: arrayPorts length: 7. 
	"
	^ self ffiCall: #(int libusb_get_port_numbers	(LUDevice *aLUDevice, FFIExternalArray anArray, int arrayLength))