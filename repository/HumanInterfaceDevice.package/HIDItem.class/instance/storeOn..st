printing
storeOn: aStream
	aStream
		<< $(;
		<< self className; space;
		<< #rawData:; space.
	self rawData storeOn: aStream.
	aStream
		<< $)