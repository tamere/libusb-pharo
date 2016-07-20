accessing
byteSize
	"Returns the size of this item state table in byte (the number of byte needed
	 to store the bits for example, if the #bitSize is 9, this will return 2)."
	| supBits |
	supBits := ((self bitSize % 8) isZero
					ifTrue: [ 0 ]
					ifFalse: [ 8 - (self bitSize % 8) ]).
	^ (self bitSize + supBits) / 8