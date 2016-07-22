tests-converting
testBytesFromUnsignedIntegerWithSize
	self
		should: [ self bytesFromUnsignedInteger: -1 withSize: 1 ] raise: Error;
		should: [ self bytesFromUnsignedInteger: 256 withSize: 1 ] raise: Error;
		assert: (self bytesFromUnsignedInteger: 255 withSize: 1) equals: #[16rFF];
		assert: (self bytesFromUnsignedInteger: 256 withSize: 2) equals: #[0 1]