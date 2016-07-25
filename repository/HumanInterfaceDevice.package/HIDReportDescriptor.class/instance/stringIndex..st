building - local
stringIndex: anInteger
	"Adds an HIDStringIndex object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDStringIndex new
								index: anInteger;
								yourself)