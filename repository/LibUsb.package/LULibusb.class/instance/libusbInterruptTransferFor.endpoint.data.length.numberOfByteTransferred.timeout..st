synchronous device I/O
libusbInterruptTransferFor: aLUDeviceHandle endpoint: endpoint data: aCharArray length: length numberOfByteTransferred: anIntegerValueHolder timeout: milliseconds
	^ self ffiCall: #(LUErrorEnumeration libusb_interrupt_transfer(
								LUDeviceHandle * aLUDeviceHandle,
								uchar 	endpoint,
								uchar * aCharArray,
								int length,
								LUIntegerValueHolder * anIntegerValueHolder,
								uint milliseconds))