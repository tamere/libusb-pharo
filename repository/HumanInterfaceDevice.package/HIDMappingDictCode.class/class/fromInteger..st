instance creation
fromInteger: anInteger
	| matchingKey |
	matchingKey := self mappingDict keys detect: [ :key |
							key hidCodeMatch: anInteger ].
	^ self basicNew
		initialize;
		codeOrRange: anInteger;
		description: (self mappingDict at: matchingKey);
		yourself