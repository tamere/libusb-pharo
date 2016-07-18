printing
shortPrintOn: aStream
	self printClassOn: aStream with: [ :stream |
		stream
			<< (self isOpen ifTrue: [ 'Open' ] ifFalse: [ 'Close' ]) ]