testing
hasFeatureReport
	^ self hidObjects anySatisfy: [ :hidObject | hidObject class = HIDFeature ]