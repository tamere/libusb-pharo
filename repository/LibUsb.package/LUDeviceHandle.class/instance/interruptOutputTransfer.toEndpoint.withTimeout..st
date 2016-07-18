synchronous device I/O
interruptOutputTransfer: aCharArray toEndpoint: endpoint withTimeout: milliseconds
	
	^ self interruptTransfer: aCharArray toEndpoint: endpoint withTimeout: milliseconds direction: LUEndpointDirectionEnumeration LIBUSB_ENDPOINT_OUT