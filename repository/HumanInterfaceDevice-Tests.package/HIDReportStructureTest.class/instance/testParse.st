tests-parsing
testParse
	| parsed |
	parsed := self sampleReportStructure
					parse: #[0 0 0 0 0 0 0 0 0].

	self 
		assert: parsed size equals: 5;
		assert: parsed first size equals: 8;
		assert: parsed second size equals: 1;
		assert: parsed third size equals: 5;
		assert: parsed fourth size equals: 1;
		assert: parsed fifth size equals: 6