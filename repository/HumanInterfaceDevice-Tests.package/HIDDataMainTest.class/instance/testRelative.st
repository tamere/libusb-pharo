tests-accessing
testRelative
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			relative.
	
		self assert: hidDataMain isRelative ]