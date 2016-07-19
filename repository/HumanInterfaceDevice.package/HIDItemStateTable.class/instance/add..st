adding
add: anHIDItem
	self items
		detect: [ :item | item class = anHIDItem class ]
		ifFound: [ :item |
			self items remove: item ]
		ifNone: [  ].
	self items add: anHIDItem