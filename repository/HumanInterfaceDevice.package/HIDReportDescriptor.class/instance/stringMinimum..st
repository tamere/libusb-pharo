building - local
stringMinimum: anInteger
	"Adds an HIDStringMinimum object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDStringMinimum new
								minimum: anInteger;
								yourself)