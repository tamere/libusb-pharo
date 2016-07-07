synchronous device I/O
bulkTransfer: aByteArray toEndpoint: aLUEndpointDescriptor withTimeout: anInteger direction: aLUEndpointDirectionEnumeration
	<libusbHighlevelFor: #libusbBulkTransferFor:endpoint:data:length:numberOfByteTransferred:timeout:>
	| byteTransfered result |
	byteTransfered := LUIntegerValueHolder new.
	result := self libusb 
					libusbBulkTransferFor: self
					endpoint: (aLUEndpointDescriptor bEndpointAddress
									bitOr: aLUEndpointDirectionEnumeration value)
					data: aByteArray
					length: aByteArray size
					numberOfByteTransferred: byteTransfered
					timeout: 10000.
	
	result = LUErrorEnumeration LIBUSB_SUCCESS
		ifFalse: [ self libusbErrorCode: result ].
	
	^ byteTransfered value