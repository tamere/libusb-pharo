tests-accessing
testNullState
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			nullState.
	
		self assert: hidDataMain hasNullState ]