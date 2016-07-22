tests - array size finding
testMinimalArraySizeForInteger
	self
		assert: (self minimalArraySizeForInteger: 0) equals: 1;
		assert: (self minimalArraySizeForInteger: 5) equals: 1;
		assert: (self minimalArraySizeForInteger: -5) equals:1;
		assert: (self minimalArraySizeForInteger: 256) equals: 2;
		assert: (self minimalArraySizeForInteger: -256) equals: 2 