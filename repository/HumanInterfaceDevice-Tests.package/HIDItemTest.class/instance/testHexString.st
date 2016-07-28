tests-printing
testHexString
	| hidItem |
	hidItem := HIDShortItem rawData: #[16r81 16r03].
	
	self assert: hidItem hexString equals: '8103'