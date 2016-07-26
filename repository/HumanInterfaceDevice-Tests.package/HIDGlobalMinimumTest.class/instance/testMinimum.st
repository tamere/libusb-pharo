tests-accessing
testMinimum
	| hidObjects |
	hidObjects := self concreteClassesToTest collect: #new.
	hidObjects do: [ :hidObject |
		hidObject minimum: -42.
		self assert: hidObject minimum equals: -42.
		hidObject minimum: -1.
		self assert: hidObject minimum equals: -1.
		hidObject minimum: 42.
		self assert: hidObject minimum equals: 42.
		self should: [ hidObject minimum: 9999999999 ] raise: Error. ]