tests-printing
testHexString
	| hidItem |
	hidItem := HIDItem rawData: #[16r81 16r03].
	
	self assert: hidItem hexString equals: '8103'