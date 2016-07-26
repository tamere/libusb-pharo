tests - converting
testBytesFromIntegerWithSize
	self
		assert: (self bytesFromInteger: -1 withSize: 2) equals: #[255 255];
		assert: (self bytesFromInteger: 0 withSize: 2) equals: #[0 0];
		assert: (self bytesFromInteger: 5 withSize: 2) equals: #[5 0];
		assert: (self bytesFromInteger: -5 withSize: 2) equals: #[251 255]