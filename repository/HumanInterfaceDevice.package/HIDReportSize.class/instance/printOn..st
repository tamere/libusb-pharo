printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< $(;
		<< self size;
		<< (self size > 1 ifTrue: [ 'bits' ] ifFalse: [ 'bit' ]);
		<< $)