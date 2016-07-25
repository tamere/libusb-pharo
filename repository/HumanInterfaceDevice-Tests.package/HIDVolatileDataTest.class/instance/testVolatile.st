tests-accessing
testVolatile
	(self concreteClassesToTest collect: #new) do: [ :hidObject |
		hidObject
			nonVolatile.
		
		self assert: hidObject isNonVolatile ]