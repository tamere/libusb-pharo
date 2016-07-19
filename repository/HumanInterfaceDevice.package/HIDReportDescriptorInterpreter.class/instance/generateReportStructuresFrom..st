generation
generateReportStructuresFrom: aCollectionOfHIDObjects
	objectsStream := aCollectionOfHIDObjects readStream.
	[ objectsStream atEnd ]
		whileFalse: [ 
			objectsStream next
				reportDescriptorInterpreterAction: self ].
	^ itemStateTables select: [ :stateTable | stateTable mainItems size > 0 ]