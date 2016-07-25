private - building
addMainItem: anHIDMainItem configuredBy: aBlock
	aBlock value: anHIDMainItem.
	self addHIDObject: anHIDMainItem