building - global
unitExponent: anInteger
	"Adds an HIDUnitExponent object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDUnitExponent new
								exponent: anInteger;
								yourself)