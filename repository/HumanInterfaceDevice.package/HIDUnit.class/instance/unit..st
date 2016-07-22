accessing
unit: anInteger
	self flag: #TODO. "Unit are simply encoded as a int... Maybe the int should be converted to specific unit objects."
	self updateItemWithUnsignedInteger: anInteger