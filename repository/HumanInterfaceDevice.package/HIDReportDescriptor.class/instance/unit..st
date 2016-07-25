building - global
unit: anInteger
	"Adds an HIDUnit object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDUnit new
								unit: anInteger;
								yourself)