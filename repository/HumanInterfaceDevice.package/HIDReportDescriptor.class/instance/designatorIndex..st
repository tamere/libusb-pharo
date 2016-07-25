building - local
designatorIndex: anInteger
	"Adds an HIDDesignatorIndex object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDDesignatorIndex new
								index: anInteger;
								yourself)