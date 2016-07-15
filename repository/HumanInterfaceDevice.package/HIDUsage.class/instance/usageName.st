accessing
usageName
	| usagePageId id |
	usagePageId := self usagePage id.
	id := self id.
	^ (self class usageDictionaryFor: usagePageId)
		at: id
		ifAbsent: [ 
			((self class reservedUsageIdsFor: usagePageId)
				includes: id)
					ifTrue: [ ^ #Reserved ] ]