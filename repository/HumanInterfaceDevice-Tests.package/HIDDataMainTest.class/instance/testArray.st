tests-accessing
testArray
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			array.
	
		self assert: hidDataMain isArray ]