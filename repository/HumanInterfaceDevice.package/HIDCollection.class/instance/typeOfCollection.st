accessing
typeOfCollection
	^ self knownCollectionTypesDict
		at: self typeOfCollectionCode
		ifAbsent: [ 
			(self typeOfCollection between: 16r07 and: 16r7f)
				ifTrue: [ ^ #Reserved ]
				ifFalse: [ ^ #'Vendor-defined' ] ]