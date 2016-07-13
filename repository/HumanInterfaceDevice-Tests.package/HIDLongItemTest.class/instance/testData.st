tests-accessing
testData
	| otherHidLongItem |
	self assert: hidLongItem data equals: #[].
	
	otherHidLongItem := HIDLongItem rawData: #[2r11110010 2 0 0 0].
	self assert: otherHidLongItem data equals: #[0 0]