printing
hexString
	^ String streamContents: [ :stream | self printHexOn: stream ]