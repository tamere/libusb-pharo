accessing
pageName
	| id |
	id := self id.
	^ self class idToNameDict
		at: id
		ifAbsent: [ 
			(self class reservedIds includes: id)
				ifTrue: [ ^ #Reserved ].
			(self class vendorDefinedIds includes: id)
				ifTrue: [ ^ #'Vendor-defined' ] ]