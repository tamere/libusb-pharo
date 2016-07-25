tests-accessing
testNotWrapped
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			wrapped.
	
		self assert: hidDataMain isWrapped ]