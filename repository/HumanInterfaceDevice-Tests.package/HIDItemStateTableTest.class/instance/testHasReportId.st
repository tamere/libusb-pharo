tests-testing
testHasReportId
	self deny: itemStateTable hasReportId.
	itemStateTable add: (HIDReportId new id: 2; yourself).
	
	self assert: itemStateTable hasReportId