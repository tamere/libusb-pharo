building - local
usageMinimum: anInteger
	"Adds an HIDUsageMinimum object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDUsageMinimum new
								minimum: anInteger;
								yourself)