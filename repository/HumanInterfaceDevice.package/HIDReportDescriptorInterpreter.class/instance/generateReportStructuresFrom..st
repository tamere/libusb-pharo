generation
generateReportStructuresFrom: aCollectionOfHIDObjects
	objectsStream := aCollectionOfHIDObjects readStream.
	[ objectsStream atEnd ]
		whileFalse: [ 
			objectsStream next
				reportDescriptorInterpreterAction: self ].
	self flag: #TODO."Manage when many ids are present."
	^ HIDReportStructure
		itemStateTables: (itemStateTables select: [ :stateTable | stateTable mainItems size > 0 ])