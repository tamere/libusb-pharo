parsing
parse: aStream
	| items |
	items := OrderedCollection new.
	[ aStream atEnd ]
		whileFalse: [ |item|
			item := [ HIDShortItemParser parse: aStream ]
						on: HIDParsingFailed
					 	do: [ HIDLongItemParser parse: aStream ].
			items add: item ].
	^ items