tests-accessing
testPreferredState
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			preferredState.
	
		self assert: hidDataMain hasPreferredState ]