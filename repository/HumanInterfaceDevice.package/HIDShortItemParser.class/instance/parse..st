parsing
parse: aStream
	| prefix bSize bType bTag itemsToRead |
	prefix := aStream peek.
	bSize := self extractBSizeFrom: prefix.
	bType := self extractBTypeFrom: prefix.
	bTag := self extractBTagFrom: prefix.
	self flag: #TODO. "verify it is actually a short item."
	
	itemsToRead := bSize = 3
							ifFalse: [ bSize ]
							ifTrue: [ 4 ].
	^ HIDShortItem rawData: (aStream next: itemsToRead + 1).