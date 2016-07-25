accessing
dataAt: anIndex put: aByte
	"Change the value of the data part (i.e. after the header)."
	self subclassResponsibility