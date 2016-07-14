test - converting
testUnsignedIntegerFromBytes
	self
		assert: (self unsignedIntegerFromBytes: #[255 255])
		equals: 65535.
	
	self
		should: [ self unsignedIntegerFromBytes: #[] ]
		raise: CollectionIsEmpty