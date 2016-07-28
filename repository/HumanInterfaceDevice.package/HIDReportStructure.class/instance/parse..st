parsing
parse: aByteArray
	"Parse a report given as a byte array."
	| reportAsInteger bitIndex |
	bitIndex := 1.
	reportAsInteger := self unsignedIntegerFromBytes: aByteArray.
	^ (self itemStateTables collect: [ :itemStateTable |
			|count bitMask bitsPerReport|
			count := itemStateTable reportCount.
			bitsPerReport := itemStateTable bitSize / count.
			bitMask := self allOneMaskBitLength: bitsPerReport.
			(1 to: count) collect: [ :i | |extracted|
				extracted := reportAsInteger
									bitAnd: (bitMask << (bitIndex - 1)).
				extracted := extracted >> (bitIndex -1).
				bitIndex := bitIndex + bitsPerReport.
				itemStateTable isPositiveValue
					ifTrue: [ self unsignedIntegerFromBytes: extracted asLittleEndianByteArray ]
					ifFalse: [ self signedIntegerFromBytes: extracted asLittleEndianByteArray ] ] ]) asArray