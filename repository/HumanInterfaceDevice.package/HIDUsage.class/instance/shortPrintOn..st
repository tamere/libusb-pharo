printing
shortPrintOn: aStream
	self printClassOn: aStream with: [ :stream |
		self usagePage
			ifNotNil: [ 
				stream
					<< self usageName asString ] ]