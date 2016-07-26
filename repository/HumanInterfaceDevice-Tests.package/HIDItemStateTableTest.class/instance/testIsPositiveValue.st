tests-testing
testIsPositiveValue
	itemStateTable
		add: (HIDLogicalMinimum new minimum: -1; yourself).
	
	self deny: itemStateTable isPositiveValue.
	
	itemStateTable logicalMinimumItem minimum: 0.
	self assert: itemStateTable isPositiveValue.
	
	itemStateTable logicalMinimumItem minimum: 42.
	self assert: itemStateTable isPositiveValue.