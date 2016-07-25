tests-building
testUnitExponent
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor unitExponent: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDUnitExponent.
	self assert: hidReportDescriptor hidObjects first exponent equals: 2