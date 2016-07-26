tests-accessing
testBitSize
	reportStructure
		itemStateTables:
			{(HIDItemStateTable new
				items: { HIDReportSize new size: 2; yourself.
					HIDReportCount new count: 8; yourself };
				yourself)}.
	
	self assert: reportStructure bitSize equals: 16.
	
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
	
	self assert: reportStructure bitSize equals: 32