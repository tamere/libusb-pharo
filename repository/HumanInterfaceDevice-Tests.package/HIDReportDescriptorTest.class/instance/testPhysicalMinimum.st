tests-building - global
testPhysicalMinimum
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor physicalMinimum: 42.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDPhysicalMinimum.
	self assert: hidReportDescriptor hidObjects first minimum equals: 42