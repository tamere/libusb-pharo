tests-accessing
testTypeOfCollection
	| hidCollection |
	hidCollection := HIDCollection new.
	self should: [ hidCollection typeOfCollection: #Nope ] raise: Error.
	hidCollection typeOfCollection: #Physical.
	self assert: hidCollection typeOfCollection equals: #Physical.
	self assert: hidCollection typeOfCollectionCode equals: 0