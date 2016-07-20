parsing
parse: aByteArray
	"Parse a report given as a byte array."
	| reportAsInteger bitIndex |
	bitIndex := 1.
	reportAsInteger := self unsignedIntegerFromBytes: aByteArray.
	^ (self itemStateTables collect: [ :itemStateTable | |count bitMask|
			count := itemStateTable reportCount.
			bitMask := 0.
			1 to: itemStateTable bitSize / count do: [ :i |
				bitMask := bitMask bitAt: i put: 1 ].
			(1 to: count) collect: [ :i | |extracted|
				extracted := reportAsInteger
									bitAnd: (bitMask << (bitIndex - 1)).
				extracted := extracted >> (bitIndex -1).
				bitIndex := bitIndex + (itemStateTable bitSize / count).
				itemStateTable isPositiveValue
					ifTrue: [ self unsignedIntegerFromBytes: extracted asLittleEndianByteArray ]
					ifFalse: [ self signedIntegerFromBytes: extracted asLittleEndianByteArray ] ] ])