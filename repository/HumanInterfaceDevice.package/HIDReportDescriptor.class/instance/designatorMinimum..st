building - local
designatorMinimum: anInteger
	"Adds an HIDDesignatorMinimum object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDDesignatorMinimum new
								minimum: anInteger;
								yourself)