tests-accessing
testSize
	| hidObject |
	hidObject := HIDReportSize new.
	hidObject size: 1.
	self assert: hidObject size equals: 1.
	hidObject size: 42.
	self assert: hidObject size equals: 42.
	self should: [ hidObject size: 9999999999 ] raise: Error.
	self should: [ hidObject size: -1 ] raise: Error.