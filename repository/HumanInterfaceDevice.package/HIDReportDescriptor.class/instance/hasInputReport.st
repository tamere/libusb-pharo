testing
hasInputReport
	^ self hidObjects anySatisfy: [ :hidObject | hidObject class = HIDInput ]