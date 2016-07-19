initialization
initialize
	super initialize.
	stack := Stack new.
	itemStateTables := OrderedCollection new.
	itemStateTable := HIDItemStateTable new