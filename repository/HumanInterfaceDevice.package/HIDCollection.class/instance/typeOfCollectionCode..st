accessing
typeOfCollectionCode: anInteger
	(self knownCollectionTypesDict includesKey: anInteger)
		ifFalse: [
			self error: ('Unknwon collection type: {1}'
								format: { anInteger }) ].
	self item
		dataAt: 1
		put: anInteger