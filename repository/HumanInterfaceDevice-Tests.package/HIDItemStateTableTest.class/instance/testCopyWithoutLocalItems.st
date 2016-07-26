tests-copying
testCopyWithoutLocalItems
	itemStateTable
		add: (HIDPhysicalMaximum new maximum: 1; yourself);
		add: (HIDPhysicalMinimum new minimum: 0; yourself);
		add: (HIDDelimiter new beOpen; yourself).
	
	self assert: itemStateTable items size equals: 3.
	self assert: itemStateTable copyWithoutLocalItems items size equals: 2