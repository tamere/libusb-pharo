accessing
initializeMappingDict
	mappingDict := { 
			0 -> 'No Subclass'.
			1 -> 'Boot Interface Subclass '.
			(3 to: 255) -> 'Reserved'
		 } asDictionary