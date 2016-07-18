testing
hasOutputReport
	^ self hidObjects flattened anySatisfy: [ :hidObject | hidObject class = HIDOutput ]