tests-adding
testAdd
	self assert: itemStateTable items isEmpty.
	itemStateTable add: HIDUsageMaximum new.
	self assert: itemStateTable items size equals: 1.
	itemStateTable add: HIDUsageMaximum new.
	self assert: itemStateTable items size equals: 1.
	itemStateTable add: HIDUsageMinimum new.
	self assert: itemStateTable items size equals: 2