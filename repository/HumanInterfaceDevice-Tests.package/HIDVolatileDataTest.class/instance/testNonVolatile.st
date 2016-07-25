tests-accessing
testNonVolatile
	(self concreteClassesToTest collect: #new) do: [ :hidObject |
		hidObject
			volatile.
		
		self assert: hidObject isVolatile ]