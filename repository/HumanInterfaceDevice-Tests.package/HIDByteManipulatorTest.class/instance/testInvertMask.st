tests - inverting
testInvertMask
	self
		assert: (self invertMask: self firstBitMask) equals: 2r11111110;
		assert: (self invertMask: self secondBitMask) equals: 2r11111101;
		assert: (self invertMask: self thirdBitMask) equals: 2r11111011;
		assert: (self invertMask: self fourthBitMask) equals: 2r11110111;
		assert: (self invertMask: self fifthBitMask) equals: 2r11101111;
		assert: (self invertMask: self sixthBitMask) equals: 2r11011111;
		assert: (self invertMask: self seventhBitMask) equals: 2r10111111;
		assert: (self invertMask: self eighthBitMask) equals: 2r01111111