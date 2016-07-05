accessing - computed
readableUsbVersion
	| hex |
	hex := (self bcdUSB printStringBase: 16).
	^ String streamContents: [ :stream |
		stream
			<< 'USB ';
			<< hex first;
			<< $.;
			<< hex second ]