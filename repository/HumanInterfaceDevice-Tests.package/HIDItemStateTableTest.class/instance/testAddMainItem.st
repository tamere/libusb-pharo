tests-adding
testAddMainItem
	self assert: itemStateTable mainItems isEmpty.
	itemStateTable addMainItem: HIDInput new.
	self assert: itemStateTable mainItems size equals: 1.
	itemStateTable addMainItem: HIDInput new.
	self assert: itemStateTable mainItems size equals: 2.
	itemStateTable addMainItem: HIDInput new.
	self assert: itemStateTable mainItems size equals: 3