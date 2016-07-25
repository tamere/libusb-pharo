building - global
logicalMinimum: anInteger
	"Adds an HIDLogicalMinimum object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDLogicalMinimum new
								minimum: anInteger;
								yourself)