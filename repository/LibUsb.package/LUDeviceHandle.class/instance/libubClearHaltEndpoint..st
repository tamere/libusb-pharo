clear halt
libubClearHaltEndpoint: endpoint
	<libusbHighLevelFor: #libubClearHaltFor:endpoint:>
	| result |
	result := self libusb
					libubClearHaltFor: self endpoint: endpoint.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ]