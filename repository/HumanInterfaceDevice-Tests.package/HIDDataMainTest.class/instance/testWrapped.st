tests-accessing
testWrapped
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			wrapped.
	
		self assert: hidDataMain isWrapped ]