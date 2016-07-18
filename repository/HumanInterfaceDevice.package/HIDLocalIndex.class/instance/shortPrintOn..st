printing
shortPrintOn: aStream
	self printClassOn: aStream with: [ :stream |
		stream
			<< self index asString ]