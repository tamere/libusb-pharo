initialization
initialize
	super initialize.
	libusbContext := LUContext new.
	libusbContext logLevelWarning