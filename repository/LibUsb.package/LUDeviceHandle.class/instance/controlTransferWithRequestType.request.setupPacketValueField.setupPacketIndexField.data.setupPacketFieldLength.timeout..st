synchronous device I/O
controlTransferWithRequestType: requestType request: request setupPacketValueField: setupPacketValueField setupPacketIndexField: setupPacketIndexField data: charArray setupPacketFieldLength: setupPacketFieldLength timeout: milliseconds
	<libusbHighlevelFor: #libusbControlTransferFor:requestType:request:setupPacketValueField:setupPacketIndexField:data:setupPacketFieldLength:timeout:>
	| result |
	result := self libusb
					libusbControlTransferFor: self
					requestType: requestType
					request: request
					setupPacketValueField: setupPacketValueField
					setupPacketIndexField: setupPacketIndexField
					data: charArray
					setupPacketFieldLength: setupPacketFieldLength
					timeout: milliseconds.
		
	result value >= 0
		ifFalse: [ self libusbErrorCode: result ].
	^ result value