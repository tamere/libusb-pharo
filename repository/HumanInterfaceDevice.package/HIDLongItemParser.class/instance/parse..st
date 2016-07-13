parsing
parse: aStream
	| prefix itemsToRead |
	prefix := aStream peek.
	(self isLongItemPrefix: prefix)
		ifFalse: [ HIDParsingFailed signal: 'Expected long item.' ].
	
	itemsToRead := aStream next; next.
	aStream back; back.
	^ HIDLongItem rawData: (aStream next: itemsToRead + 3).