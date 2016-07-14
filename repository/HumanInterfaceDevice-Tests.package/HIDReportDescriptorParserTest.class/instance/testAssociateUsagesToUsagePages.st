tests-associating
testAssociateUsagesToUsagePages
	| mouseReport mouseReportStream hidObjects currentHidUsagePage mouseReportWrong mouseReportWrongStream |
	mouseReport := #[5 1 9 2 161 1 9 1 161 0 5 9 25 1 41 16 21 0 37 1 149 16 117 1 129 2 5 1 22 1 128 38 255 127 117 16 149 2 9 48 9 49 129 6 21 129 37 127 117 8 149 1 9 56 129 6 5 12 10 56 2 149 1 129 6 192 192].
	mouseReportStream := ReadStream on: mouseReport.
	hidObjects := HIDReportDescriptorParser parse: mouseReportStream.
	
	currentHidUsagePage := nil.
	hidObjects do: [ :hidObject |
		hidObject class = HIDUsagePage
			ifTrue: [ currentHidUsagePage := hidObject ].
		hidObject class = HIDUsage
			ifTrue: [ self assert: hidObject usagePage = currentHidUsagePage ] ].
	mouseReportWrong := #[9 2 161 1 9 1 161 0 5 9 25 1 41 16 21 0 37 1 149 16 117 1 129 2 5 1 22 1 128 38 255 127 117 16 149 2 9 48 9 49 129 6 21 129 37 127 117 8 149 1 9 56 129 6 5 12 10 56 2 149 1 129 6 192 192].
	mouseReportWrongStream := ReadStream on: mouseReportWrong.
	self
		should: [ HIDReportDescriptorParser parse: mouseReportWrongStream ]
		raise: HIDParsingFailed