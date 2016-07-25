building - local
usageId: anInteger
	"Adds an HIDUsage object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDUsage new
								id: anInteger;
								yourself)