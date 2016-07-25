tests-accessing
testBitField
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			bitField.
	
		self assert: hidDataMain hasBitField ]