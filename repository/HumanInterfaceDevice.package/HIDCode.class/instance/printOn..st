printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< $(;
		<< codeOrRange;
		<< $:;
		<< description;
		<< $)