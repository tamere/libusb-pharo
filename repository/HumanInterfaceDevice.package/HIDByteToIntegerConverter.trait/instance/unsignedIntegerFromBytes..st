converting
unsignedIntegerFromBytes: aByteArray
	| unsignedInteger |
	aByteArray size = 0
		ifTrue: [ CollectionIsEmpty signalWith: aByteArray ].
	unsignedInteger := 0.
	aByteArray reverseWithIndexDo: [ :byte :i |
		unsignedInteger := unsignedInteger bitOr: byte << ((i-1) * 8) ].
	^ unsignedInteger