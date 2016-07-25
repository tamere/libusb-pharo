tests-building
testPhysicalMaximum
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor physicalMaximum: 42.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDPhysicalMaximum.
	self assert: hidReportDescriptor hidObjects first maximum equals: 42