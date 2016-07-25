tests-accessing
testMinimum
	| hidObjects |
	hidObjects := self concreteClassesToTest collect: #new.
	hidObjects do: [ :hidObject |
		self should: [ hidObject minimum: 9999999999 ] raise: Error.
		hidObject minimum: -42.
		self assert: hidObject minimum equals: -42.
		hidObject minimum: 0.
		self assert: hidObject minimum equals: 0.
		hidObject minimum: 42.
		self assert: hidObject minimum equals: 42 ]