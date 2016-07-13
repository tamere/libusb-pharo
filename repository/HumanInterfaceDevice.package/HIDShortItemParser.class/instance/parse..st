parsing
parse: aStream
	| prefix itemsToRead |
	prefix := aStream peek.
	
	(self isLongItemPrefix: prefix)
		ifTrue: [ HIDParsingFailed signal: 'Expected short item.' ].
	
	itemsToRead := self extractRealSizeFrom: prefix.
	^ HIDShortItem rawData: (aStream next: itemsToRead + 1).