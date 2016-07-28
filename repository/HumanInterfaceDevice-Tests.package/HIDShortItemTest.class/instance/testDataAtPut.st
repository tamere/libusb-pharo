tests-accessing
testDataAtPut
	hidShortItem dataAt: 1 put: 0.
	self assert: (hidShortItem data) equals: #[0]