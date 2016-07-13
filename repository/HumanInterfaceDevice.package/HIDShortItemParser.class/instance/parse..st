parsing
parse: aStream
	| prefix bSize bType bTag itemsToRead |
	prefix := aStream peek.
	bSize := self extractBSizeFrom: prefix.
	bType := self extractBTypeFrom: prefix.
	bTag := self extractBTagFrom: prefix.
	
	(bSize = 2r10 and: [ bTag = 2r1111 ] )"Test if it is a long item."
		ifTrue: [ HIDParsingFailed signal: 'Was a long item' ].
	
	itemsToRead := self extractRealSizeFrom: prefix.
	^ HIDShortItem rawData: (aStream next: itemsToRead + 1).