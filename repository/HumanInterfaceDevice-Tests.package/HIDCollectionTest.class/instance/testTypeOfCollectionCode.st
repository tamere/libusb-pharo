tests-accessing
testTypeOfCollectionCode
	| hidCollection |
	hidCollection := HIDCollection new.
	self should: [ hidCollection typeOfCollectionCode: -1 ] raise: Error.
	hidCollection typeOfCollectionCode: 0.
	self assert: hidCollection typeOfCollection equals: #Physical.
	self assert: hidCollection typeOfCollectionCode equals: 0