classes retrieving
classesForItemType: type
	^ (self subclasses
			detect: [ :class | class itemTypeCode = type ]) allSubclasses
				select: [ :class | "Some subclasses are abstract determinate it by sending #itemTagCode."
					[ class itemTagCode.
					  true ]
						on: SubclassResponsibility
						do: [ false ] ] 