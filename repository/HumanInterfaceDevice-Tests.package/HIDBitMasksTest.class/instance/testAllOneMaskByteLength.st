tests-bit masks
testAllOneMaskByteLength
	self
		should: [ self allOneMaskByteLength: -1 ] raise: Error;
		should: [ self allOneMaskByteLength: 0 ] raise: Error;
		assert: (self allOneMaskByteLength: 1) equals: 16rFF;
		assert: (self allOneMaskByteLength: 4) equals: 16rFFFFFFFF