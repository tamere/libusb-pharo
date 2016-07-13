tests - accessing
testBType
	| hidShortItem |
	hidShortItem := HIDShortItem rawData: #[16r81 16r03].
	self assert: hidShortItem bType equals: 0.