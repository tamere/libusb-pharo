tests-building
testReportCount
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor reportCount: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDReportCount.
	self assert: hidReportDescriptor hidObjects first count equals: 2