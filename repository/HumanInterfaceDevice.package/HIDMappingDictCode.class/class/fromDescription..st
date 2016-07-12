instance creation
fromDescription: aString
	^ self basicNew
		initialize;
		codeOrRange: (self mappingDict keyAtValue: aString);
		description: aString;
		yourself