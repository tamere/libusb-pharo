tests-bit masks
testAllOneMaskBitLength
	self
		should: [ self allOneMaskBitLength: -1 ] raise: Error;
		should: [ self allOneMaskBitLength: 0 ] raise: Error;
		assert: (self allOneMaskBitLength: 1) equals: 1;
		assert: (self allOneMaskBitLength: 8) equals: 255