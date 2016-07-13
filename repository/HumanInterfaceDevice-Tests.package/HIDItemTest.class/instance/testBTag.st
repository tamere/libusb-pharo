tests - accessing
testBTag
	| hidShortItem |
	hidShortItem := HIDShortItem rawData: #[16r81 16r03].
	self assert: hidShortItem bTag equals: 8.