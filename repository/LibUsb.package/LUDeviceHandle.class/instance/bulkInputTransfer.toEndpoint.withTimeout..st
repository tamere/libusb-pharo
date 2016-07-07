synchronous device I/O
bulkInputTransfer: aByteArray toEndpoint: aLUEndpointDescriptor withTimeout: anInteger
	^ self bulkTransfer: aByteArray toEndpoint: aLUEndpointDescriptor withTimeout: aLUEndpointDescriptor direction: LUEndpointDirectionEnumeration LIBUSB_ENDPOINT_IN