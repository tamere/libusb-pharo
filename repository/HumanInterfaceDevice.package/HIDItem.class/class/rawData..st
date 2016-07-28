instance creation
rawData: aByteArray
	self name = #HIDItem
		ifTrue: [ self error: 'This class is abstract, please use one of my subclasses.' ].
	^ self new 
		rawData: aByteArray;
		yourself