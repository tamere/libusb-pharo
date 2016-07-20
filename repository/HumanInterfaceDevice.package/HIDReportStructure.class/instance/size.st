accessing
size
	^ self itemStateTables
		inject: 0
		into: [ :sum :itemStateTable |
			sum + itemStateTable size ]