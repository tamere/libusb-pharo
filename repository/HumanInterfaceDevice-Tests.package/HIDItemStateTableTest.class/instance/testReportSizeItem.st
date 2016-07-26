tests-accessing
testReportSizeItem
	| reportSize |
	self should: [ itemStateTable reportSizeItem ] raise: NotFound.
	reportSize := HIDReportSize new size: 1; yourself.
	
	itemStateTable
		add: reportSize.
	
	self assert: itemStateTable reportSizeItem equals: reportSize.