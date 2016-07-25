tests-accessing
testIndex
	| hidObjects |
	hidObjects := self concreteClassesToTest collect: #new.
	hidObjects do: [ :hidObject |
		self should: [ hidObject index: 9999999999 ] raise: Error.
		self should: [ hidObject index: -42 ] raise: Error.
		hidObject index: 0.
		self assert: hidObject index equals: 0.
		hidObject index: 42.
		self assert: hidObject index equals: 42 ]