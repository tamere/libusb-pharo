printing
shortPrintOn: aStream
	self printClassOn: aStream with: [ :stream |
		stream
			<< self size asString;
			<< (self size > 1 ifTrue: [ 'bits' ] ifFalse: [ 'bit' ]) ]