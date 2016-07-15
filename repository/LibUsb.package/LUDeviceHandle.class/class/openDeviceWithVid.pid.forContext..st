open device
openDeviceWithVid: vendorId pid: productId forContext: aLUContext
	<libusbHighlevelFor: #libusbOpenDeviceForContext:withVid:pid:>
	| result |
	result := self libusb
					libusbOpenDeviceForContext: aLUContext withVid: vendorId pid: productId.
	
	result isNull
		ifTrue: [
			self
				error: ('Could not get the device with vid={1}, pid={2}.'
								format: {vendorId libusbHexStringOfLength: 4 . productId libusbHexStringOfLength: 4}) ].
	
	^ result