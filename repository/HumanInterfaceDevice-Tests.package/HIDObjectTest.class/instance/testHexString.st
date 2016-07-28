tests-printing
testHexString
	| hidObject |
	hidObject := HIDObject new
						item: (HIDShortItem rawData: #[16r81 16r03]).
	
	self assert: hidObject hexString equals: '8103'