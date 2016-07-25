tests-accessing
testVariable
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			variable.
	
		self assert: hidDataMain isVariable ]