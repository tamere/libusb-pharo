tests-accessing
testCount
	| hidObject |
	hidObject := HIDReportCount new.
	hidObject count: 1.
	self assert: hidObject count equals: 1.
	hidObject count: 42.
	self assert: hidObject count equals: 42.
	self should: [ hidObject count: 9999999999 ] raise: Error.
	self should: [ hidObject count: -1 ] raise: Error.