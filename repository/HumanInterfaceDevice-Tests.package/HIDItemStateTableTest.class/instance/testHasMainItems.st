tests-testing
testHasMainItems
	self deny: itemStateTable hasMainItems.
	
	itemStateTable addMainItem: HIDInput new.
	
	self assert: itemStateTable hasMainItems