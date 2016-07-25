initialization
initialize
	super initialize.
	self
		item: (HIDShortItem
					rawData: {(self shortItemHeaderWithSize: 0)} asByteArray)