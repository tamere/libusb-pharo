tests-building - global
testReportSize
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor reportSize: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDReportSize.
	self assert: hidReportDescriptor hidObjects first size equals: 2