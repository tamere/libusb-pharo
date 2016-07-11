accessing - libusb
maxPacketSizeForEnpoint: endpoint
	<libusbHighlevelFor: #libusbGetMaxPacketSizeFor:endpoint:>
	| result |
	result := self libusb
					libusbGetMaxPacketSizeFor: self endpoint: endpoint.
	
	result < 0
		ifTrue: [ self libusbErrorCode: (LUErrorEnumeration fromInteger: result) ].
	
	^ result