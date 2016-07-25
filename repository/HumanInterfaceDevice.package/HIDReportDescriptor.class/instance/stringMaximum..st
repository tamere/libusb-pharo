building - local
stringMaximum: anInteger
	"Adds an HIDStringMaximum object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDStringMaximum new
								maximum: anInteger;
								yourself)