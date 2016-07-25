building - local
usageMaximum: anInteger
	"Adds an HIDUsageMaximum object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDUsageMaximum new
								maximum: anInteger;
								yourself)