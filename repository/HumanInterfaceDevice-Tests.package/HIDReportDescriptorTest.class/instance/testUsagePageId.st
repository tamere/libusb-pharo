tests-building - global
testUsagePageId
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor usagePageId: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDUsagePage.
	self assert: hidReportDescriptor hidObjects first id equals: 2