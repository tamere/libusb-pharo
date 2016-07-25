tests-item state table manipulation
testPushPopItemStateTable
	hidReportDescriptorInterpreter
		addObjectToItemStateTable: (HIDLogicalMaximum new maximum: 42; yourself).
	self
		assert: hidReportDescriptorInterpreter itemStateTable items size
		equals: 1.
	
	hidReportDescriptorInterpreter pushItemStateTable.
	hidReportDescriptorInterpreter
		addObjectToItemStateTable: (HIDLogicalMinimum new minimum: 0; yourself).
	
	self
		assert: hidReportDescriptorInterpreter itemStateTable items size
		equals: 2.
	hidReportDescriptorInterpreter popItemStateTable.
	
	self
		assert: hidReportDescriptorInterpreter itemStateTable items size
		equals: 1.