testing
hasInputReport
	^ self hidObjects flattened anySatisfy: [ :hidObject | hidObject class = HIDInput ]