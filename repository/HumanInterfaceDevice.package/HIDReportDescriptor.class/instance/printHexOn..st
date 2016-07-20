printing
printHexOn: aStream
	self hidObjects do: [ :hidObject |
		hidObject printHexOn: aStream ]