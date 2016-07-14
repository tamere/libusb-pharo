parsing
parse: aStream
	| hidObjects |
	hidObjects := (super parse: aStream) collect: #hidObject.
	self associateUsagesToUsagePages: hidObjects.
	^ hidObjects