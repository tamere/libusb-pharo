tests-printing
testPrintHexOn
	| hidItem stream |
	hidItem := HIDShortItem rawData: #[16r81 16r03].
	stream := WriteStream on: String new.
	
	hidItem printHexOn: stream.
	self assert: stream contents equals: '8103'