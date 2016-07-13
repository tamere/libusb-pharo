as yet unclassified
parse: aStream
	| prefix bSize bType bTag |
	prefix := aStream next.
	bSize := self extractBSizeFrom: prefix.
	bType := self extractBTypeFrom: prefix.
	bTag := self extractBTagFrom: prefix.