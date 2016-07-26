tests-accessing
testBitSize
	itemStateTable
		add: (HIDReportCount new count: 2; yourself);
		add: (HIDReportSize new size: 4; yourself).
	
	self assert: itemStateTable bitSize equals: 8