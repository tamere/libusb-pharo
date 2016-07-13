accessing
bLongItemTag
	^ [ self rawData third ]
			on: SubscriptOutOfBounds
			do: [ HIDAbsentDataField signal: 'No bLongItemTag field.' ]