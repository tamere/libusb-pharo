building - local
openDelimiter
	"Adds an open HIDDelimiter object to the objects list."
	self addHIDObject: (HIDDelimiter new
								beOpen;
								yourself)