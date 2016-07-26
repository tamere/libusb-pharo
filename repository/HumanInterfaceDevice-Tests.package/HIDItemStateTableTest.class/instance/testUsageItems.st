tests-accessing
testUsageItems
	self assert: itemStateTable usageItems isEmpty.
	
	itemStateTable add: (HIDUsage new id: 1; yourself).
	
	self assert: itemStateTable usageItems size equals: 1.