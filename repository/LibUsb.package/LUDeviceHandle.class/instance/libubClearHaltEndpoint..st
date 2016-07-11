clear halt
libubClearHaltEndpoint: endpoint
	<libusbHighLevelFor: #libusbClearHaltFor:endpoint:>
	| result |
	result := self libusb
					libusbClearHaltFor: self endpoint: endpoint.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ]