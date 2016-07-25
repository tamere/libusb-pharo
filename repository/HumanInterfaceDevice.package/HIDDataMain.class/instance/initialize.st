initialization
initialize
	super initialize.
	self
		item: (HIDShortItem
					rawData: {(self shortItemHeaderWithSize: 2)} asByteArray,#(0 0))