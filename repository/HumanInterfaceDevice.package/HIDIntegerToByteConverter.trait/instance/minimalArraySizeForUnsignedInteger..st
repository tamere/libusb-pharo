array size finding
minimalArraySizeForUnsignedInteger: anInteger
	| size |
	size := 1.
	[ [ self bytesFromUnsignedInteger: anInteger withSize: size. true ]
		on: Error do: [ false ] ] whileFalse: [ size := size + 1 ].
	^ size