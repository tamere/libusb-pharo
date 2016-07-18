testing
hasFeatureReport
	^ self hidObjects flattened anySatisfy: [ :hidObject | hidObject class = HIDFeature ]