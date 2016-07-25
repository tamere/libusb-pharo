building - local
designatorMaximum: anInteger
	"Adds an HIDDesignatorMaximum object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDDesignatorMaximum new
								maximum: anInteger;
								yourself)