test - converting
testSignedIntegerFromBytes
	self
		assert: (self signedIntegerFromBytes: #[16r81])
		equals: -127.
	
	self
		assert: (self signedIntegerFromBytes: #[16r7f])
		equals: 127.
	
	self
		assert: (self signedIntegerFromBytes: #[2r11010110 255])
		equals: -42.
	
	self
		assert: (self signedIntegerFromBytes: #[2r11010110])
		equals: -42.
	
	self
		assert: (self signedIntegerFromBytes: #[255 255])
		equals: 0.
	
	self
		should: [ self signedIntegerFromBytes: #[] ]
		raise: CollectionIsEmpty