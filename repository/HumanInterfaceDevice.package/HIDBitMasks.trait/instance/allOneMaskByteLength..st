bit masks
allOneMaskByteLength: anInteger
	"Faster method to generate a bit mask mades of only '1' if the number of '1' is a multiple of 8.
	
	self allOneMaskByteLength: 1. -> 511"
	| mask |
	anInteger <= 0 ifTrue: [ self error: 'A bit mask has a length > 0.' ].
	mask := 16rFF.
	anInteger > 1
		ifTrue: [ 
			1 to: (anInteger - 1) do: [ :i |
				mask := mask bitOr: (mask << 8) ] ].
	^ mask