accessing
usageName
	| id |
	id := self id.
	^ (self class usageDictionaryFor: self usagePage)
		at: id
		ifAbsent: [ 
			((self class reservedUsageIdsFor: self usagePage)
				includes: id)
					ifTrue: [ ^ #Reserved ] ]