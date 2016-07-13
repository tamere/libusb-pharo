extraction
extractRealSizeFrom: aBytePrefix
	"Extract the number of byte(s) used by this item from the prefix byte
	(prefix not included)."
	| bSize |
	bSize := self extractBSizeFrom: aBytePrefix.
	^ bSize = 3
		ifTrue: [ 4 ]
		ifFalse: [ bSize ]