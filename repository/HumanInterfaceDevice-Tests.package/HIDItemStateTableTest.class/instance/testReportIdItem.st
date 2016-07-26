tests-accessing
testReportIdItem
	| reportId |
	self should: [ itemStateTable reportIdItem ] raise: NotFound.
	reportId := HIDReportId new id: 1; yourself.
	
	itemStateTable
		add: reportId.
	
	self assert: itemStateTable reportIdItem equals: reportId.