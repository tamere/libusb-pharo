tests-building - main
testCollectionTypeWith
	| hidReportDescriptor |
	hidReportDescriptor := HIDReportDescriptor new.
	hidReportDescriptor collectionType: #Physical with: [ :reportDesc |
		reportDesc
			physicalMaximum: 10;
			physicalMinimum: 0 ].
	self assert: hidReportDescriptor hidObjects size equals: 4.
	self assert: hidReportDescriptor hidObjects first class equals: HIDCollection.
	self assert: hidReportDescriptor hidObjects first typeOfCollection equals: #Physical.
	self assert: hidReportDescriptor hidObjects second class equals: HIDPhysicalMaximum.
	self assert: hidReportDescriptor hidObjects third class equals: HIDPhysicalMinimum.
	self assert: hidReportDescriptor hidObjects fourth class equals: HIDEndCollection.