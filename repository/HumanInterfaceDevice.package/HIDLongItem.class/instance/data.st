accessing
data
	"Return the data without the 3 first metadata bytes."
	^ self rawData copyFrom: 4 to: self rawData size