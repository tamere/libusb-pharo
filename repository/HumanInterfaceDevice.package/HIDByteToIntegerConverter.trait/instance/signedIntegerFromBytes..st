converting
signedIntegerFromBytes: aByteArray
	| unsignedInteger signedInteger power |
	(aByteArray isNotEmpty and: [aByteArray noneSatisfy: [ :byte | byte ~= 0 ]])
		ifTrue: [ ^ 0 ].
	(aByteArray isNotEmpty and: [aByteArray noneSatisfy: [ :byte | byte ~= 255 ]])
		ifTrue: [ ^ -1 ].
	unsignedInteger := self unsignedIntegerFromBytes: aByteArray.
	power := 1.
	signedInteger := 0.
	signedInteger := signedInteger + ((unsignedInteger bitAt: 1)*power).
	2 to: (aByteArray size * 8) - 1 do: [ :i |
		power := power << 1.
		signedInteger := signedInteger + ((unsignedInteger bitAt: i)*power) ].
	
	(unsignedInteger bitAt: aByteArray size * 8) = 1
		ifTrue: [ signedInteger := signedInteger - (2 ** ((aByteArray size * 8) - 1)) ].
	^ signedInteger 