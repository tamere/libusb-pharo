tests-report structures manipulation
testAllocateNewItemStateTable
	self assert: hidReportDescriptorInterpreter itemStateTables isEmpty.
	
	hidReportDescriptorInterpreter
		addObjectToItemStateTable: (HIDLogicalMaximum new maximum: 42; yourself).
	
	hidReportDescriptorInterpreter allocateNewItemStateTable.
	
	self assert: hidReportDescriptorInterpreter itemStateTables size equals: 1