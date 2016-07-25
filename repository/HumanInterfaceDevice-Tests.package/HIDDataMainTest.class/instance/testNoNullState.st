tests-accessing
testNoNullState
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			noNullState.
	
		self assert: hidDataMain doesNotHaveNullState ]