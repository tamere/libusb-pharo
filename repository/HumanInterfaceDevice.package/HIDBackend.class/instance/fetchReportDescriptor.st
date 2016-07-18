hid report descriptor
fetchReportDescriptor
	"Fetch the report descriptor, parses it and returns it as an HIDReportDescriptor object.
	Also set #reportDescriptor inst. var."
	^ self subclassResponsibility