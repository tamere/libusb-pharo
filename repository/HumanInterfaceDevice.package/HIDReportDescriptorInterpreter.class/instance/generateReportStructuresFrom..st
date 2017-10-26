generation
generateReportStructuresFrom: aCollectionOfHIDObjects
	| coherentItemStateTables hasIds idToItemStateTable |
	objectsStream := aCollectionOfHIDObjects readStream.
	[ objectsStream atEnd ]
		whileFalse: [ 
			objectsStream next
				reportDescriptorInterpreterAction: self ].
	
	coherentItemStateTables := itemStateTables select: #hasMainItems.
	hasIds := coherentItemStateTables
					inject: false
					into: [ :boolean :currentItemStateTable |
						boolean or: [ currentItemStateTable hasReportId ] ].

	hasIds
		ifFalse: [ ^ { HIDReportStructure itemStateTables: coherentItemStateTables } ].
	
	idToItemStateTable := ((coherentItemStateTables select: #hasReportId)
									groupedBy: #reportId).
	^ HIDReportStructureCollection new
			reportStructures: (idToItemStateTable keys sorted
										collect: [ :id | HIDReportStructure itemStateTables: (idToItemStateTable at: id) ]);
			yourself
	