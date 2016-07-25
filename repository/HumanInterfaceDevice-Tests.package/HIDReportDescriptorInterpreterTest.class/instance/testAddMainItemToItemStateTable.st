tests-report structures manipulation
testAddMainItemToItemStateTable
	self assert: hidReportDescriptorInterpreter itemStateTable mainItems isEmpty.
	
	hidReportDescriptorInterpreter addMainItemToItemStateTable: (HIDInput new).
	
	self
		assert: hidReportDescriptorInterpreter itemStateTable mainItems size
		equals: 1.