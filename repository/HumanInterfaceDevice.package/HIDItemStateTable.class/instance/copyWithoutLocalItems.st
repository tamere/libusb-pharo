copying
copyWithoutLocalItems
	| copy |
	copy := HIDItemStateTable new.
	(items reject: #isLocal) do: [ :item |
		copy add: item deepCopy ].
	^ copy