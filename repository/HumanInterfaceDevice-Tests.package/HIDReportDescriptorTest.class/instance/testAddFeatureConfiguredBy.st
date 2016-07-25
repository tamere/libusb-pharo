tests-building - main
testAddFeatureConfiguredBy
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor addFeatureConfiguredBy: [ :feature |
		feature
			relative;
			variable ].
	
	self assert: hidReportDescriptor hidObjects size equals: 1.
	self assert: hidReportDescriptor hidObjects first class equals: HIDFeature.
	self
		assert: hidReportDescriptor hidObjects first isRelative;
		assert: hidReportDescriptor hidObjects first isVariable