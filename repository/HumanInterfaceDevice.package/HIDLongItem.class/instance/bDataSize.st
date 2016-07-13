accessing
bDataSize
	^ [ self rawData second ]
			on: SubscriptOutOfBounds
			do: [ HIDAbsentDataField signal: 'No bDataSize field.' ]