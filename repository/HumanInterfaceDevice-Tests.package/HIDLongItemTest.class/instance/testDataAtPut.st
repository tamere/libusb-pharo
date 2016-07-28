tests-accessing
testDataAtPut
	| otherHidLongItem |
	otherHidLongItem := HIDLongItem rawData: #[2r11110010 2 0 0 0].
	otherHidLongItem dataAt: 1 put: 1.
	self assert: otherHidLongItem data equals: #[1 0]