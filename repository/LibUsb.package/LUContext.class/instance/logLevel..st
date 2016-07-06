logging
logLevel: aLULogLevelEnumeration
	<libusbHighlevelFor: #libusbSetDebugContext:level:> 
	self libusb
		libusbSetDebugContext: self level: aLULogLevelEnumeration