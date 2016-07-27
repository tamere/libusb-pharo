writing
writeBytesOn: aStream
	self hidObjects do: [ :hidObject |
		hidObject writeBytesOn: aStream ]