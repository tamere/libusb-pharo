tests-building - global
testUnit
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor unit: 1.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDUnit.
	self assert: hidReportDescriptor hidObjects first unit equals: 1