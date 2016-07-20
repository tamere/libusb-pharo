parsing
parse: aByteArray
	"Parse a report given as a byte array."
	"| reportBitIndex |
	reportBitIndex := 1.
	^ (self itemStateTables collect: [ :itemStateTable | |count|
			count := itemStateTable reportCount.
			(1 to: count) collect: [ :i |
				|subByteArray oldIndex|
				oldIndex := reportBitIndex.
				reportBitIndex := oldIndex + (itemStateTable bitSize / count).
				subByteArray := aByteArray littleEndianSplitFromBit: oldIndex toBit: reportBitIndex - 1.
				itemStateTable isPositiveValue
					ifTrue: [ self unsignedIntegerFromBytes: subByteArray ]
					ifFalse: [ self signedIntegerFromBytes: subByteArray ] ] ])"
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