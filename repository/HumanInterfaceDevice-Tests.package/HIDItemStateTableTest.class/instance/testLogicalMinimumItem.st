tests-accessing
testLogicalMinimumItem
	| logicalMin |
	self should: [ itemStateTable logicalMinimumItem ] raise: NotFound.
	logicalMin := HIDLogicalMinimum new minimum: -1; yourself.
	
	itemStateTable
		add: logicalMin.
	
	self assert: itemStateTable logicalMinimumItem equals: logicalMin.