tests-accessing
testAbsolute
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			absolute.
	
		self assert: hidDataMain isAbsolute ]