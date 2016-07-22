converting
bytesFromUnsignedInteger: anInteger withSize: numberOfBytes
	anInteger < 0 ifTrue: [ self error: 'The integer must be > 0.' ].
	(anInteger between: 0 and: (self allOneMaskByteLength: numberOfBytes))
		ifFalse: [
			self error: ('Can not represent {1} on {2} bytes.' format: {anInteger . numberOfBytes}) ].
	
	^ (anInteger asByteArrayOfSize: numberOfBytes) reversed