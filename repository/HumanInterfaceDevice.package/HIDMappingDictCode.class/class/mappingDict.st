accessing
mappingDict
	^ mappingDict
		ifNil: [
			self initializeMappingDict.
			mappingDict ]