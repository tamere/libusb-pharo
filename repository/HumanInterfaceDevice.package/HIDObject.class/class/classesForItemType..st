classes retrieving
classesForItemType: type
	^ (self subclasses
		detect: [ :class | class itemTypeCode = type ]) subclasses