tests-building - local
testOpenDelimiter
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor openDelimiter.
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDDelimiter.
	self assert: hidReportDescriptor hidObjects first isOpen