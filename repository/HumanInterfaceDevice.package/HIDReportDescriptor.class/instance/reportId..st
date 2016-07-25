building - global
reportId: anInteger
	"Adds an HIDReportId object with the value in parameter to
	 the objects list."
	self addHIDObject: (HIDReportId new
								id: anInteger;
								yourself)