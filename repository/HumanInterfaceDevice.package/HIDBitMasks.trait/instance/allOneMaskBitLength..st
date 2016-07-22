bit masks
allOneMaskBitLength: anInteger
	"Returns a bit mask of size #anInteger mades of '1' only.
	
	self allOneMaskBitLength: 2. -> 3
	self allOneMaskBitLength: 8. -> 511"
	| mask |
	anInteger <= 0 ifTrue: [ self error: 'A bit mask has a length > 0.' ].
	mask := 1.
	anInteger > 1
		ifTrue: [ 
			1 to: anInteger-1 do: [ :i |
				mask := mask bitOr: (mask << 1) ] ].
	^ mask