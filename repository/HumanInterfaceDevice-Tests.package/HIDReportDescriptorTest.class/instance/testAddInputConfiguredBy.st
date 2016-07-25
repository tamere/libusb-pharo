tests-building - main
testAddInputConfiguredBy
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor addInputConfiguredBy: [ :input |
		input
			relative;
			variable ].
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDInput.
	self
		assert: hidReportDescriptor hidObjects first isRelative;
		assert: hidReportDescriptor hidObjects first isVariable