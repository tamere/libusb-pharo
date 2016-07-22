tests-accessing
testMaximum
	| hidObjects |
	hidObjects := self concreteClassesToTest collect: #new.
	hidObjects do: [ :hidObject |
		hidObject maximum: -42.
		self assert: hidObject maximum equals: -42.
		hidObject maximum: 42.
		self assert: hidObject maximum equals: 42.
		self should: [ hidObject maximum: 9999999999 ] raise: Error. ]