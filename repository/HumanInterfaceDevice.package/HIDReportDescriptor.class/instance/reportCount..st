building
reportCount: anInteger
	"Adds an HIDReportCount object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDReportCount new
								count: anInteger;
								yourself)