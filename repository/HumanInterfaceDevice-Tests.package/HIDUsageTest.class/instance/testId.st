tests-accessing
testId
	| hidObject |
	hidObject := HIDUsage new.
	hidObject id: 0.
	self assert: hidObject id equals: 0.
	hidObject id: 1.
	self assert: hidObject id equals: 1.
	hidObject id: 42.
	self assert: hidObject id equals: 42.
	self should: [ hidObject id: 9999999999 ] raise: Error.
	self should: [ hidObject id: -1 ] raise: Error.