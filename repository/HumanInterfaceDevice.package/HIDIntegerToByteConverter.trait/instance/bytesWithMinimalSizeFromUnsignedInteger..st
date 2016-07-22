converting
bytesWithMinimalSizeFromUnsignedInteger: anInteger
	| size |
	anInteger < 0 ifTrue: [ self error: 'The integer must be > 0.' ].
	size := 1.
	[ [ ^ self bytesFromUnsignedInteger: anInteger withSize: size ]
		on: Error do: [ false ] ] whileFalse: [ size := size + 1 ]