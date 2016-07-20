printing
printHexOn: aStream
	self rawData do: [ :byte |
		byte printOn: aStream base: 16 length: 2 padded: true ]