accessing
bSize
	"The raw size of the item (prefix not included) read from the prefix byte.
	According to the specification,
	bSize | real size (number of byte(s))
	0     | 0
	1     | 1
	2     | 2
	3     | 4
	To get the 'real' size use #size."
	^ self extractBSizeFrom: self prefix