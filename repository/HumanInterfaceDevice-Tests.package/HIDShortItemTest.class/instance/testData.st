tests-accessing
testData
	rawData := #[16r81 16r03].
	hidShortItem := HIDShortItem rawData: rawData.
	self assert: hidShortItem data equals: #[16r03]