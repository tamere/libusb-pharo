tests-accessing
testNoPreferredState
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			noPreferredState.
	
		self assert: hidDataMain doesNotHavePreferredState ]