tests-item state table manipulation
testRemoveLocalItemsFromItemStateTable
	hidReportDescriptorInterpreter
		addObjectToItemStateTable: (HIDLogicalMaximum new maximum: 42; yourself);
		addObjectToItemStateTable: (HIDLogicalMinimum new minimum: -42; yourself);
		addObjectToItemStateTable: (HIDDelimiter new beClose; yourself).
		
	self
		assert: hidReportDescriptorInterpreter itemStateTable items size
		equals: 3.
	
	hidReportDescriptorInterpreter
		removeLocalItemsFromItemStateTable.
	
	self
		assert: hidReportDescriptorInterpreter itemStateTable items size
		equals: 2;
		assert: (hidReportDescriptorInterpreter itemStateTable items
						noneSatisfy: [ :item | item class = HIDDelimiter ])