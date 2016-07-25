tests-building - local
testDesignatorIndex
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor designatorIndex: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDDesignatorIndex.
	self assert: hidReportDescriptor hidObjects first index equals: 2