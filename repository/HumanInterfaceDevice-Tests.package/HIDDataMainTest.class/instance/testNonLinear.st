tests-accessing
testNonLinear
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			nonLinear.
	
		self assert: hidDataMain isNonLinear ]