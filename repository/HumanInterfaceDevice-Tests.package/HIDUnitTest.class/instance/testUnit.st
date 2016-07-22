tests-accessing
testUnit
	| hidObject |
	hidObject := HIDUnit new.
	hidObject unit: 1.
	self assert: hidObject unit equals: 1.
	hidObject unit: 42.
	self assert: hidObject unit equals: 42.
	self should: [ hidObject unit: 9999999999 ] raise: Error.
	self should: [ hidObject unit: -1 ] raise: Error.