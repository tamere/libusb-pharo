printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< $(;
		<< (self isOpen ifTrue: [ 'Open' ] ifFalse: [ 'Close' ]);
		<< $)