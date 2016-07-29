tests-printing
testStoreOn
	| hidItem stream |
	hidItem := HIDShortItem rawData: #[16r81 16r03].
	stream := WriteStream on: String new.
	hidItem storeOn: stream.
	self assert: stream contents equals: '(HIDShortItem rawData: #[129 3])'