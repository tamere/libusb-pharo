accessing
bitField
	self item
		dataAt: 2
		put: (self data second bitAnd: (self invertMask: self firstBitMask))