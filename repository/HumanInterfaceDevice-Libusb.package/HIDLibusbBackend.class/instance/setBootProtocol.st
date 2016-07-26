hid requests
setBootProtocol
	libusbDeviceHandle
					controlTransferWithRequestType: (LUEndpointDirectionEnumeration LIBUSB_ENDPOINT_OUT value
																	| LURequestTypeEnumeration LIBUSB_REQUEST_TYPE_CLASS value
																	| LURequestRecipientEnumeration LIBUSB_RECIPIENT_INTERFACE value)
					request: HIDBackend SET_PROTOCOL
					setupPacketValueField: 0
					setupPacketIndexField: self hidInterfaceForRequests
					data: nil
					setupPacketFieldLength: 0
					timeout: self requestsTimeout