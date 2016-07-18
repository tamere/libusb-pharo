hid requests
setReport: hidReport withType: reportType id: reportId
	| data byteSent |
	data := self externalCharArrayOfSize: hidReport size.
	data autoRelease.
	hidReport doWithIndex: [ :byte :i |
		data at: i put: byte ].
	byteSent:= libusbDeviceHandle
					controlTransferWithRequestType: (LUEndpointDirectionEnumeration LIBUSB_ENDPOINT_OUT value
																	| LURequestTypeEnumeration LIBUSB_REQUEST_TYPE_CLASS value
																	| LURequestRecipientEnumeration LIBUSB_RECIPIENT_INTERFACE value)
					request: HIDBackend SET_REPORT
					setupPacketValueField: (reportType << 8) | reportId
					setupPacketIndexField: self hidInterfaceForRequests
					data: data getHandle
					setupPacketFieldLength: data size
					timeout: self requestsTimeout.
	
	self assert: (byteSent = data size)