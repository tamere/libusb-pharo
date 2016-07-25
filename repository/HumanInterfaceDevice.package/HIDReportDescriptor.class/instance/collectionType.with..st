building - main
collectionType: aSymbol with: aBlock
	self addHIDObject: (HIDCollection new
								typeOfCollection: aSymbol;
								yourself).
	aBlock cull: self.
	self addHIDObject: HIDEndCollection new