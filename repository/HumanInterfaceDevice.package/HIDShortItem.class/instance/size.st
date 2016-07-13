accessing
size
	"Number of byte used by this item read from the prefix byte
	(prefix not included)."
	^ self bSize = 3
		ifTrue: [ 4 ]
		ifFalse: [ self bSize ]