printing
printClassOn: aStream with: aBlock
	"Print a string formatted like 'HIDObject(...)' on the stream.
	 The '...' content is defined by the block given as parameter."
	aStream
		<< self className;
		<< $(.
	aBlock cull: aStream.
	aStream << $)