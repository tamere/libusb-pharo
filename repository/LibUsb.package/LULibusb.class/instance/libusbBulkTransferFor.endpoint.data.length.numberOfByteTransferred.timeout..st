synchronous device I/O
libusbBulkTransferFor: aLUDeviceHandle endpoint: anEndpoint data: charArray length: charArrayLength numberOfByteTransferred: aLUIntegerValueHolder timeout: milliseconds
	^ self ffiCall: #(LUErrorEnumeration libusb_bulk_transfer(	
								LUDeviceHandle * 	aLUDeviceHandle,
								uchar anEndpoint,
								uchar * charArray,
								int charArrayLength,
								LUIntegerValueHolder * aLUIntegerValueHolder,
								uint milliseconds))