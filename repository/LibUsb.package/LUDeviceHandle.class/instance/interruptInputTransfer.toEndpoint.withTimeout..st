synchronous device I/O
interruptInputTransfer: aCharArray toEndpoint: aLUEndpointDescriptor withTimeout: milliseconds
	
	^ self interruptTransfer: aCharArray toEndpoint: aLUEndpointDescriptor withTimeout: milliseconds direction: LUEndpointDirectionEnumeration LIBUSB_ENDPOINT_IN 