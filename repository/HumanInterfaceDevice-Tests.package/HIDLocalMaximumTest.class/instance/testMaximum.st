tests-accessing
testMaximum
	| hidObjects |
	hidObjects := self concreteClassesToTest collect: #new.
	hidObjects do: [ :hidObject |
		self should: [ hidObject maximum: 9999999999 ] raise: Error.
		hidObject maximum: -42.
		self assert: hidObject maximum equals: -42.
		hidObject maximum: 0.
		self assert: hidObject maximum equals: 0.
		hidObject maximum: 42.
		self assert: hidObject maximum equals: 42 ]