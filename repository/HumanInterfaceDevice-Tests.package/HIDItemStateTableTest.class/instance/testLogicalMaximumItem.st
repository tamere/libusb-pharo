tests-accessing
testLogicalMaximumItem
	| logicalMax |
	self should: [ itemStateTable logicalMaximumItem ] raise: NotFound.
	logicalMax := HIDLogicalMaximum new maximum: -1; yourself.
	
	itemStateTable
		add: logicalMax.
	
	self assert: itemStateTable logicalMaximumItem equals: logicalMax.