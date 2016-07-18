testing
hasOutputReport
	^ self hidObjects anySatisfy: [ :hidObject | hidObject class = HIDOutput ]