building
physicalMaximum: anInteger
	"Adds an HIDPhysicalMaximum object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDPhysicalMaximum new
								maximum: anInteger;
								yourself)