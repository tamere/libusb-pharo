generation
generateReportStructuresFrom: aCollectionOfHIDObjects
	| coherentItemStateTables hasIds idToItemStateTable |
	objectsStream := aCollectionOfHIDObjects readStream.
	[ objectsStream atEnd ]
		whileFalse: [ 
			objectsStream next
				reportDescriptorInterpreterAction: self ].
	
	coherentItemStateTables := itemStateTables select: [ :stateTable | stateTable mainItems isNotEmpty ].
	hasIds := coherentItemStateTables
					inject: true
					into: [ :boolean :currentItemStateTable |
						boolean and: [ currentItemStateTable items anySatisfy: #isReportId ] ].
	hasIds
		ifFalse: [ ^ { HIDReportStructure itemStateTables: coherentItemStateTables } ].
	
	idToItemStateTable := (coherentItemStateTables groupedBy: #reportId).
	^ idToItemStateTable keys sorted
		collect: [ :id | HIDReportStructure itemStateTables: (idToItemStateTable at: id) ]
	