accessing
hidObject
	"Returns a new hid object for which the class correspond to this item."
	^	self hidObjectClass new
			item: self;
			yourself