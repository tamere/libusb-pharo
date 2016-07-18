printing
shortPrintOn: aStream
	aStream
		<< self className;
		<< $(;
		<< self size asString;
		space;
		<< (self size > 1 ifTrue: [ 'objects' ] ifFalse: [ 'object' ]);
		<< $)