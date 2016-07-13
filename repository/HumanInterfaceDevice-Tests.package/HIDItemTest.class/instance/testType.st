tests - accessing
testType
	| hidShortItem |
	hidShortItem := HIDShortItem rawData: #[16r81 16r03].
	self assert: hidShortItem type equals: #Main