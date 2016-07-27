tests-writing
testWriteBytesOn
| hidObject stream |
	hidObject := HIDObject new
						item: (HIDItem rawData: #[16r81 16r03]).
	stream := WriteStream on: ByteArray new.
	hidObject writeBytesOn: stream.
	
	self assert: stream contents equals: #[16r81 16r03]