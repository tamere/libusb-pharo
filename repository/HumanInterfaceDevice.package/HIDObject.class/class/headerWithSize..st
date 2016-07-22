helper
headerWithSize: anInteger
	"Creates a byte header for an HIDShortItem using:
		- the size given as an integer parameter
		- the result of #itemTagCode message
		- the result of #itemTypeCode message
	"
	| realSize |
	(#(0 1 2 4) includes: anInteger)
		ifFalse: [ self error: 'HIDShortItem can only hold data of size 0, 1, 2 or 4 byte(s).' ].
	"The size 4 is encoded as the integer 3 ('11' in binary)."
	realSize := anInteger = 4 
						ifTrue: [ 3 ]
						ifFalse: [ anInteger ].
	^ (self itemTagCode << 4)
			bitOr: ((self itemTypeCode << 2)
							bitOr: realSize)