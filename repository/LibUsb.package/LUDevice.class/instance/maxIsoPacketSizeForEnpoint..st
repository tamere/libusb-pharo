accessing - libusb
maxIsoPacketSizeForEnpoint: endpoint
	<libusbHighlevelFor: #libusbGetMaxIsoPacketSizeFor:endpoint:>
	| result |
	result := self libusb
					libusbGetMaxIsoPacketSizeFor: self endpoint: endpoint.
	
	result < 0
		ifTrue: [ self libusbErrorCode: (LUErrorEnumeration fromInteger: result) ].
	
	^ result