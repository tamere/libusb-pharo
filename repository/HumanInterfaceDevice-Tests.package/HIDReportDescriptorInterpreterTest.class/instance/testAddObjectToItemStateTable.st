tests-item state table manipulation
testAddObjectToItemStateTable
	hidReportDescriptorInterpreter
		addObjectToItemStateTable: (HIDLogicalMaximum new maximum: 42; yourself).
	self
		assert: hidReportDescriptorInterpreter itemStateTable items size
		equals: 1;
		assert: hidReportDescriptorInterpreter itemStateTable items last class
		equals: HIDLogicalMaximum.
	
	hidReportDescriptorInterpreter
		addObjectToItemStateTable: (HIDLogicalMaximum new maximum: 2; yourself).
	self
		assert: hidReportDescriptorInterpreter itemStateTable items size
		equals: 1;
		assert: hidReportDescriptorInterpreter itemStateTable items last class
		equals: HIDLogicalMaximum;
		assert: hidReportDescriptorInterpreter itemStateTable items last maximum
		equals: 2.
	
	hidReportDescriptorInterpreter
		addObjectToItemStateTable: (HIDLogicalMinimum new minimum: -42; yourself).
	self
		assert: hidReportDescriptorInterpreter itemStateTable items size
		equals: 2;
		assert: hidReportDescriptorInterpreter itemStateTable items last class
		equals: HIDLogicalMinimum.
	
	hidReportDescriptorInterpreter
		addObjectToItemStateTable: (HIDDelimiter new beClose; yourself).
	self
		assert: hidReportDescriptorInterpreter itemStateTable items size
		equals: 3;
		assert: hidReportDescriptorInterpreter itemStateTable items last class
		equals: HIDDelimiter.