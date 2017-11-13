parsing
parseStream: readStream
	^ self reportStructures collect: [ :reportStructure |
		reportStructure parseStream: readStream ]