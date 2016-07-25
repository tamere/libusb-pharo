tests-building - local
testStringIndex
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor stringIndex: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDStringIndex.
	self assert: hidReportDescriptor hidObjects first index equals: 2