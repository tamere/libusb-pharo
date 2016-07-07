*LibUsb
libusbHexStringOfLength: anInteger
	^ String streamContents: [ :stream |
		stream << '0x'.
		self printOn: stream base: 16 length: anInteger padded: true ]