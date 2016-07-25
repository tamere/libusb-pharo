accessing
bufferedBytes
	self item
		dataAt: 2
		put: (self data second bitOr: self firstBitMask)