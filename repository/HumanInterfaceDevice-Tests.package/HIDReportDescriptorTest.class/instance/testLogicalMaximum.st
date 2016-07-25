tests-building
testLogicalMaximum
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor logicalMaximum: 42.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDLogicalMaximum.
	self assert: hidReportDescriptor hidObjects first maximum equals: 42