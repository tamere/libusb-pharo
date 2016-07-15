hid requests
getReportFromControlPipeWithType: reportType id: reportId
	| data byteSent bytes |
	data := FFIExternalArray externalNewType: 'uchar' size: 256.
	data autoRelease.
	byteSent:= libusbDeviceHandle
					controlTransferWithRequestType: (LUEndpointDirectionEnumeration LIBUSB_ENDPOINT_IN value
																	| LURequestTypeEnumeration LIBUSB_REQUEST_TYPE_CLASS value
																	| LURequestRecipientEnumeration LIBUSB_RECIPIENT_INTERFACE value)
					request: HIDBackend GET_REPORT
					setupPacketValueField: (reportType << 8) | reportId
					setupPacketIndexField: self hidInterfaceForRequests
					data: data getHandle
					setupPacketFieldLength: data size
					timeout: self requestsTimeout.
	
	bytes := ByteArray new: byteSent.
	1 to: byteSent do: [ :i |
		bytes at: i put: (data at: i) ].
	^ bytes