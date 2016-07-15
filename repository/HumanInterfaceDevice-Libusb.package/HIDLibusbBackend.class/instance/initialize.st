initialization
initialize
	super initialize.
	libusbContext := LUContext new.
	self requestsTimeout: self defaultRequestsTimout