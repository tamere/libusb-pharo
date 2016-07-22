tests-helpers
testHeaderWithSize
	self
		assert: (HIDLogicalMaximum headerWithSize: 0) equals: 2r00100100;
		assert: (HIDLogicalMaximum headerWithSize: 1) equals: 2r00100101;
		assert: (HIDLogicalMaximum headerWithSize: 2) equals: 2r00100110;
		assert: (HIDLogicalMaximum headerWithSize: 4) equals: 2r00100111;
		should: [ HIDLogicalMaximum headerWithSize: 3 ] raise: Error.