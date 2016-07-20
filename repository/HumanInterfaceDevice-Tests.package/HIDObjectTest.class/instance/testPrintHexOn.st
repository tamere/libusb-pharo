tests-printing
testPrintHexOn
	| hidObject stream |
	hidObject := HIDObject new
						item: (HIDItem rawData: #[16r81 16r03]).
	stream := WriteStream on: String new.
	hidObject printHexOn: stream.
	
	self assert: stream contents equals: '8103'