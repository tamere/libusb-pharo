tests-building - local
testUsageMinimum
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor usageMinimum: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDUsageMinimum.
	self assert: hidReportDescriptor hidObjects first minimum equals: 2