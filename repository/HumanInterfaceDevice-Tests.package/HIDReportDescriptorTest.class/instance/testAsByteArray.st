tests-converting
testAsByteArray
	| reportDescriptor |
	reportDescriptor := HIDReportDescriptor fromByteArray: self sampleRawReportDescriptor.
	
	self
		assert: reportDescriptor asByteArray
		equals: self sampleRawReportDescriptor