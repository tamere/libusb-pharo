tests-accessing
testLinear
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			linear.
	
		self assert: hidDataMain isLinear ]