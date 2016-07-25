tests-building
testLogicalMinimum
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor logicalMinimum: 42.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDLogicalMinimum.
	self assert: hidReportDescriptor hidObjects first minimum equals: 42