tests-accessing
testBeData
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			beData.
	
		self assert: hidDataMain isData ]