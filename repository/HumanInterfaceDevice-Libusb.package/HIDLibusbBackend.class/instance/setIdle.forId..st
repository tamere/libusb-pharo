hid requests
setIdle: idle forId: reportId
	libusbDeviceHandle
					controlTransferWithRequestType: (LUEndpointDirectionEnumeration LIBUSB_ENDPOINT_OUT value
																	| LURequestTypeEnumeration LIBUSB_REQUEST_TYPE_CLASS value
																	| LURequestRecipientEnumeration LIBUSB_RECIPIENT_INTERFACE value)
					request: HIDBackend SET_IDLE
					setupPacketValueField: (idle << 8) | reportId
					setupPacketIndexField: self hidInterfaceForRequests
					data: nil
					setupPacketFieldLength: 0
					timeout: self requestsTimeout