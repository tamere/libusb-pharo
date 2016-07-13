tests-testing
testIsLongItemPrefix
	self
		assert: (self isLongItemPrefix: 2r11110010);
		deny: (self isLongItemPrefix: 2r10000001)