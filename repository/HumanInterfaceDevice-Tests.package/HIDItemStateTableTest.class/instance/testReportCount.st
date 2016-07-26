tests-accessing
testReportCount
	| reportCount |
	self should: [ itemStateTable reportCountItem ] raise: NotFound.
	reportCount := HIDReportCount new count: 2; yourself.
	
	itemStateTable
		add: reportCount.
	
	self assert: itemStateTable reportCount equals: 2.