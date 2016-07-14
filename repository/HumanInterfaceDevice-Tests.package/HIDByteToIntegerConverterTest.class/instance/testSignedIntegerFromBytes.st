test - converting
testSignedIntegerFromBytes
	self
		assert: (self signedIntegerFromBytes: #[16r81])
		equals: -127.
	
	self
		assert: (self signedIntegerFromBytes: #[16r7f])
		equals: 127.
	
	self
		should: [ self signedIntegerFromBytes: #[] ]
		raise: CollectionIsEmpty