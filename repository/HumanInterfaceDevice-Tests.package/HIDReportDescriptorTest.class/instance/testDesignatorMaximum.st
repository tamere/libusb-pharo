tests-building - local
testDesignatorMaximum
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor designatorMaximum: 2.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDDesignatorMaximum.
	self assert: hidReportDescriptor hidObjects first maximum equals: 2