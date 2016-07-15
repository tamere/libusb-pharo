standard requests
getDescriptorWithType: descriptorType index: descriptorIndex
	| data byteSent bytes |
	data := FFIExternalArray externalNewType: 'uchar' size: 256.
	data autoRelease.
	byteSent:= libusbDeviceHandle
					controlTransferWithRequestType: (LUEndpointDirectionEnumeration LIBUSB_ENDPOINT_IN value
																	| LURequestTypeEnumeration LIBUSB_REQUEST_TYPE_STANDARD value
																	| LURequestRecipientEnumeration LIBUSB_RECIPIENT_INTERFACE value)
					request: LUStandardRequestEnumeration LIBUSB_REQUEST_GET_DESCRIPTOR value
					setupPacketValueField: (descriptorType << 8) | descriptorIndex
					setupPacketIndexField: self hidInterfaceForRequests
					data: data getHandle
					setupPacketFieldLength: data size
					timeout: self requestsTimeout.
	
	bytes := ByteArray new: byteSent.
	1 to: byteSent do: [ :i |
		bytes at: i put: (data at: i) ].
	^ bytes