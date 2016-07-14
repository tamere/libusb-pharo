printing
printOn: aStream
	super printOn: aStream.
	aStream << $(.
	self rawData doWithIndex: [ :byte :i |
		aStream
			<< '0x';
			<< (byte printStringBase: 16 length: 2 padded: true).
		i = self rawData size
			ifFalse: [ aStream << $, ] ].
	aStream << $)