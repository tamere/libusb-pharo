tests-building - local
testUsageMaximum
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor usageMaximum: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDUsageMaximum.
	self assert: hidReportDescriptor hidObjects first maximum equals: 2