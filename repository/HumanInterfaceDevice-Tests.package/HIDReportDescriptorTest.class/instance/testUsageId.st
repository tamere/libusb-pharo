tests-building - local
testUsageId
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor usageId: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDUsage.
	self assert: hidReportDescriptor hidObjects first id equals: 2