tests-private - building
testAddMainItemConfiguredBy
	| blockExecuted hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	blockExecuted := false.
	hidReportDescriptor
		addMainItem: HIDInput new configuredBy: [ :input | blockExecuted := true ].
	
	self assert: blockExecuted