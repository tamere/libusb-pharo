tests-building - local
testStringMaximum
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor stringMaximum: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDStringMaximum.
	self assert: hidReportDescriptor hidObjects first maximum equals: 2