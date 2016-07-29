as yet unclassified
unsignedIntegerFromBytes: aByteArray
	| unsignedInteger |
	aByteArray isEmpty
		ifTrue: [ CollectionIsEmpty signalWith: aByteArray ].
	unsignedInteger := 0.
	aByteArray reverseWithIndexDo: [ :byte :i |
		unsignedInteger := unsignedInteger bitOr: byte << ((i-1) * 8) ].
	^ unsignedInteger