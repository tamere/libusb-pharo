tests-writing
testWriteBytesOn
	| hidItem stream |
	hidItem := HIDItem rawData: #[16r81 16r03].
	stream := WriteStream on: ByteArray new.
	
	hidItem writeBytesOn: stream.
	self assert: stream contents equals: #[16r81 16r03]