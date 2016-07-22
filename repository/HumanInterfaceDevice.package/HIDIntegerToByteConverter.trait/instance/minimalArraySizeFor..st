array size finding
minimalArraySizeFor: anInteger
	| size |
	size := 1.
	[ [ self bytesFromInteger: anInteger withSize: size. true ]
		on: Error do: [ false ] ] whileFalse: [ size := size + 1 ].
	^ size