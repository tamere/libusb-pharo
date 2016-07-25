accessing
typeOfCollection: aSymbol
	(self knownCollectionTypesDict includes: aSymbol)
		ifFalse: [ 
			self error: ('Unknwon collection type name: {1}'
								format: { aSymbol }) ].
	self
		typeOfCollectionCode: (self knownCollectionTypesDict
										keyAtValue: aSymbol)