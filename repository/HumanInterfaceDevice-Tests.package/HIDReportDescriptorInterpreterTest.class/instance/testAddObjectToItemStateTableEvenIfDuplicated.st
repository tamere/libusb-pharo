tests-item state table manipulation
testAddObjectToItemStateTableEvenIfDuplicated
	hidReportDescriptorInterpreter
		addObjectToItemStateTableEvenIfDuplicated: (HIDLogicalMaximum new maximum: 42; yourself).
	self
		assert: hidReportDescriptorInterpreter itemStateTable items size
		equals: 1;
		assert: hidReportDescriptorInterpreter itemStateTable items last class
		equals: HIDLogicalMaximum.
	
	hidReportDescriptorInterpreter
		addObjectToItemStateTableEvenIfDuplicated: (HIDLogicalMaximum new maximum: 2; yourself).
	self
		assert: hidReportDescriptorInterpreter itemStateTable items size
		equals: 2;
		assert: hidReportDescriptorInterpreter itemStateTable items last class
		equals: HIDLogicalMaximum.