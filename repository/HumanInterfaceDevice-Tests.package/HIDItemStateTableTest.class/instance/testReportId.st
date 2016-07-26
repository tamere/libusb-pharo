tests-accessing
testReportId
	| reportId |
	self should: [ itemStateTable reportId ] raise: NotFound.
	reportId := HIDReportId new id: 1; yourself.
	
	itemStateTable
		add: reportId.
	
	self assert: itemStateTable reportId equals: 1