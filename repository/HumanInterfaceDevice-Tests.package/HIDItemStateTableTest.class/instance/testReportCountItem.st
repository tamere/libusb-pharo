tests-accessing
testReportCountItem
	| reportCount |
	self should: [ itemStateTable reportCountItem ] raise: NotFound.
	reportCount := HIDReportCount new count: 2; yourself.
	
	itemStateTable
		add: reportCount.
	
	self assert: itemStateTable reportCountItem equals: reportCount.