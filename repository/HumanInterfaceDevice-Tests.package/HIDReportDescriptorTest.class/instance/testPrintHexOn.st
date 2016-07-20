tests-printing
testPrintHexOn
	| reportDescriptor stream |
	reportDescriptor := HIDReportDescriptor fromByteArray: self sampleRawReportDescriptor.
	stream := WriteStream on: String new.
	reportDescriptor printHexOn: stream.
	
	self
		assert: stream contents
		equals: ((self sampleRawReportDescriptor
						collect: [ :byte |
							byte printStringBase: 16 length: 2 padded: true ] as: Array) fold: [ :a :b | a,b ])