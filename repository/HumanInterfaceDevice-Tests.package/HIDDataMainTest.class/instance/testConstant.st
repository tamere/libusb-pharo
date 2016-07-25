tests-accessing
testConstant
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			constant.
	
		self assert: hidDataMain isConstant ]