tests-accessing
testSize
	itemStateTable
		add: (HIDReportCount new count: 2; yourself);
		add: (HIDReportSize new size: 4; yourself).
	
	self assert: itemStateTable size equals: 8