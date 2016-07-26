hid requests
getIdleForId: reportId
	| data byteSent |
	data := self externalCharArrayOfSize: 1.
	data autoRelease.
	byteSent:= libusbDeviceHandle
					controlTransferWithRequestType: (LUEndpointDirectionEnumeration LIBUSB_ENDPOINT_IN value
																	| LURequestTypeEnumeration LIBUSB_REQUEST_TYPE_CLASS value
																	| LURequestRecipientEnumeration LIBUSB_RECIPIENT_INTERFACE value)
					request: HIDBackend GET_IDLE
					setupPacketValueField: reportId
					setupPacketIndexField: self hidInterfaceForRequests
					data: data getHandle
					setupPacketFieldLength: data size
					timeout: self requestsTimeout.
	^ data first