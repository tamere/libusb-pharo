accessing
notWrapped
	self item
		dataAt: 1
		put: (self data first bitAnd: (self invertMask: self fourthBitMask))