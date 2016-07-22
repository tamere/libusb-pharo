tests-helpers
testShortItemHeaderWithSize
	self
		assert: (HIDLogicalMaximum shortItemHeaderWithSize: 0) equals: 2r00100100;
		assert: (HIDLogicalMaximum shortItemHeaderWithSize: 1) equals: 2r00100101;
		assert: (HIDLogicalMaximum shortItemHeaderWithSize: 2) equals: 2r00100110;
		assert: (HIDLogicalMaximum shortItemHeaderWithSize: 4) equals: 2r00100111;
		should: [ HIDLogicalMaximum shortItemHeaderWithSize: 3 ] raise: Error.