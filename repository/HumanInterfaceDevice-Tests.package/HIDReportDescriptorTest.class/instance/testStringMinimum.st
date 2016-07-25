tests-building - local
testStringMinimum
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor stringMinimum: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDStringMinimum.
	self assert: hidReportDescriptor hidObjects first minimum equals: 2