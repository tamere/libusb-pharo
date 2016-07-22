accessing
exponent: exponent
	"Sets the exponent value encoded as defined in section 6.2.2.7 of HID specification."
	(exponent between: 0 and: 7)
		ifTrue: [ self updateItemWithUnsignedInteger: exponent.
			^ self ].

	(exponent between: -8 and: -1)
		ifTrue: [ self updateItemWithUnsignedInteger: 16 + exponent.
			^ self ].
	
	self error: 'Unencodable exponent. Please check section 6.2.2.7 of HID specification.'.