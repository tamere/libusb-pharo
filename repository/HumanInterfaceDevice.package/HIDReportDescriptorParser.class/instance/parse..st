parsing
parse: aStream
	| hidObjects hidObjectsStream result |
	hidObjects := (super parse: aStream) collect: #hidObject.
	self associateUsagesToUsagePages: hidObjects.
	result := OrderedCollection new.
	hidObjectsStream :=  hidObjects readStream.
	[ [ hidObjectsStream atEnd ]
		whileFalse: [
			result add: (hidObjectsStream next
							reportDescriptorParserActionOn: hidObjectsStream) ]
	] ensure: [ hidObjectsStream close ].
	^ HIDReportDescriptor new
		hidObjects: result;
		yourself