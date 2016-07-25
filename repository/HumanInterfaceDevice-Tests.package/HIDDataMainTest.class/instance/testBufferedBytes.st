tests-accessing
testBufferedBytes
	(self concreteClassesToTest collect: #new) do: [ :hidDataMain |
		hidDataMain
			bufferedBytes.
	
		self assert: hidDataMain hasBufferedBytes ]