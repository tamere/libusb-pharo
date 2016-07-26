tests-accessing
testByteSize
	reportStructure
		itemStateTables:
			{(HIDItemStateTable new
				items: { HIDReportSize new size: 2; yourself.
					HIDReportCount new count: 8; yourself };
				yourself)}.
	
	self assert: reportStructure byteSize equals: 2.
	
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
	
	self assert: reportStructure byteSize equals: 4