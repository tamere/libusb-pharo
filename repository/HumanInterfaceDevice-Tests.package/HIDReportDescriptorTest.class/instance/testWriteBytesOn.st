tests-writing
testWriteBytesOn
	| reportDescriptor stream |
	reportDescriptor := HIDReportDescriptor fromByteArray: self sampleRawReportDescriptor.
	stream := WriteStream on: ByteArray new.
	reportDescriptor writeBytesOn: stream.
	
	self
		assert: stream contents
		equals: self sampleRawReportDescriptor