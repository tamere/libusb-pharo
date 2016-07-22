tests - array size finding
testMinimalArraySizeFor
	self
		assert: (self minimalArraySizeFor: 0) equals: 1;
		assert: (self minimalArraySizeFor: 5) equals: 1;
		assert: (self minimalArraySizeFor: -5) equals:1;
		assert: (self minimalArraySizeFor: 256) equals: 2;
		assert: (self minimalArraySizeFor: -256) equals: 2 