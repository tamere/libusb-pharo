tests-adding
testAddEvenIfDuplicated
	self assert: itemStateTable items isEmpty.
	itemStateTable addEvenIfDuplicated: HIDUsageMaximum new.
	self assert: itemStateTable items size equals: 1.
	itemStateTable addEvenIfDuplicated: HIDUsageMaximum new.
	self assert: itemStateTable items size equals: 2.
	itemStateTable addEvenIfDuplicated: HIDUsageMinimum new.
	self assert: itemStateTable items size equals: 3