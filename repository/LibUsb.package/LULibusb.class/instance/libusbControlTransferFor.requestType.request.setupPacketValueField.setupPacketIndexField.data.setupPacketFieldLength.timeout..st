synchronous device I/O
libusbControlTransferFor: aLUDeviceHandle requestType: requestType request: request setupPacketValueField: setupPacketValueField setupPacketIndexField: setupPacketIndexField data: charArray setupPacketFieldLength: setupPacketFieldLength timeout: milliseconds
	^ self ffiCall: #(LUErrorEnumeration libusb_control_transfer(
								LUDeviceHandle * aLUDeviceHandle,
								uint8 	requestType,
								uint8 	request,
								uint16 setupPacketValueField,
								uint16 setupPacketIndexField,
								uchar * charArray,
								uint16 setupPacketFieldLength,
								uint milliseconds))