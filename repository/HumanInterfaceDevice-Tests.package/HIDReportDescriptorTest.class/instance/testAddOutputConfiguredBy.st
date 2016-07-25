tests-building - main
testAddOutputConfiguredBy
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor addOutputConfiguredBy: [ :output |
		output
			relative;
			variable ].
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDOutput.
	self
		assert: hidReportDescriptor hidObjects first isRelative;
		assert: hidReportDescriptor hidObjects first isVariable