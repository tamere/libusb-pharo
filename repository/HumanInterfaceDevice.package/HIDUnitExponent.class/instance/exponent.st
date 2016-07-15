accessing
exponent
	"Returns the exponent value as defined in section 6.2.2.7 of HID specification."
	| rawExponent |
	rawExponent := self signedIntegerFromBytes: self data.
	(rawExponent between: 16r0 and: 16r7)
		ifTrue: [ ^ rawExponent ].
	
	(rawExponent between: 16r8 and: 16rF)
		ifTrue: [ ^ (16r8 - (rawExponent - 16r8)) negated. ]