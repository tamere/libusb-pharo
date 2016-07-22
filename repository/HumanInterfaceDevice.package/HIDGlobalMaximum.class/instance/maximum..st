accessing
maximum: anInteger
	| byteArray byteArraySize |
	"Data can only be old in byte arrays of size 0,1,2 and 4 according to the hid specification."
	byteArraySize := self minimalArraySizeFor: anInteger.
	byteArray := self bytesFromInteger: anInteger withSize: byteArraySize.
	byteArraySize = 3
		ifTrue: [ 
			byteArray := self bytesFromInteger: anInteger withSize: 4.
			byteArraySize := byteArraySize + 1 ].
	self
		item: (HIDShortItem
					rawData: {(self headerWithSize: byteArraySize)} asByteArray , byteArray)
	
	