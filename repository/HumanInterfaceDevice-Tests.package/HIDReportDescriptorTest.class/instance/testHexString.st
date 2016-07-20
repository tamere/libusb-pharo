tests-printing
testHexString
	| reportDescriptor |
	reportDescriptor := HIDReportDescriptor fromByteArray: self sampleRawReportDescriptor.
	
	self
		assert: reportDescriptor hexString
		equals: ((self sampleRawReportDescriptor
						collect: [ :byte |
							byte printStringBase: 16 length: 2 padded: true ] as: Array) fold: [ :a :b | a,b ])