tests - accessing
testPrefix
	| hidShortItem |
	hidShortItem := HIDShortItem rawData: #[16r81 16r03].
	self assert: hidShortItem prefix equals: 16r81