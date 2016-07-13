tests-parsing
testParse
	self
		assert: (HIDReportDescriptorItemsParser parse: reportStream) size
		equals: 33