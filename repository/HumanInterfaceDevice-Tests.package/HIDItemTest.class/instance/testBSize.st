tests - accessing
testBSize
	| hidShortItem |
	hidShortItem := HIDShortItem rawData: #[16r81 16r03].
	self assert: hidShortItem bSize equals: 1.