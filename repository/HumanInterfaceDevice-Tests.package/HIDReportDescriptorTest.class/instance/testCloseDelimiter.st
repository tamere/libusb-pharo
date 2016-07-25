tests-building - local
testCloseDelimiter
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor closeDelimiter.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDDelimiter.
	self assert: hidReportDescriptor hidObjects first isClose