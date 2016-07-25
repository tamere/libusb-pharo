building
reportSize: anInteger
	"Adds an HIDReportSize object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDReportSize new
								size: anInteger;
								yourself)