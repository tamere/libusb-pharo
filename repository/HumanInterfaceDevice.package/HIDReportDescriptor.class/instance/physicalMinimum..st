building
physicalMinimum: anInteger
	"Adds an HIDPhysicalMinimum object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDPhysicalMinimum new
								minimum: anInteger;
								yourself)