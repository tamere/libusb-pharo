building - global
logicalMaximum: anInteger
	"Adds an HIDLogicalMaximum object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDLogicalMaximum new
								maximum: anInteger;
								yourself)