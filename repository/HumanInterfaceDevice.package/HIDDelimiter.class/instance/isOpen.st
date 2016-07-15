testing
isOpen
	| rawInteger |
	rawInteger := self unsignedIntegerFromBytes: self data.
	(rawInteger between: 0 and: 1)
		ifFalse: [ self error: 'Delimiter is bad encoded.' ].
		
	^ rawInteger = 1