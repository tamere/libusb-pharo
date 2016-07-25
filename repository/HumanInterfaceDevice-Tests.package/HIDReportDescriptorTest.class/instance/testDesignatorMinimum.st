tests-building - local
testDesignatorMinimum
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor designatorMinimum: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDDesignatorMinimum.
	self assert: hidReportDescriptor hidObjects first minimum equals: 2