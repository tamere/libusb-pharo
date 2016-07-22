converting
bytesWithMinimalSizeFromInteger: anInteger
	| size |
	size := 1.
	[ [ ^ self bytesFromInteger: anInteger withSize: size ]
		on: Error do: [ false ] ] whileFalse: [ size := size + 1 ]