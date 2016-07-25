accessing
variable
	self item
		dataAt: 1
		put: (self data first bitOr: self secondBitMask)