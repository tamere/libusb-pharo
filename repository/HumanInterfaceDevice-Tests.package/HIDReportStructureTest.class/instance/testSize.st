tests-accessing
testSize
	reportStructure
		itemStateTables:
			{(HIDItemStateTable new
				items: { HIDReportSize new size: 2; yourself.
					HIDReportCount new count: 8; yourself };
				yourself)}.
	
	self assert: reportStructure size equals: 16.
	
	reportStructure
		itemStateTables:
			{(HIDItemStateTable new
				items: { HIDReportSize new size: 2; yourself.
					HIDReportCount new count: 8; yourself };
				yourself).
			 (HIDItemStateTable new
				items: { HIDReportSize new size: 2; yourself.
					HIDReportCount new count: 8; yourself };
				yourself)}.
	
	self assert: reportStructure size equals: 32