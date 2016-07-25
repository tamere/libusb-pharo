tests-building
testAddHIDObject
	| hidObject hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	self assert: hidReportDescriptor hidObjects isEmpty.
	hidObject := HIDObject new.
	hidReportDescriptor addHIDObject: hidObject.
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: (hidReportDescriptor hidObjects includes: hidObject).