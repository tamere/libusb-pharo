building - global
usagePageId: anInteger
	"Adds an HIDUsagePage object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDUsagePage new
								id: anInteger;
								yourself)