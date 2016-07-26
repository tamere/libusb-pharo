converting
bytesFromInteger: anInteger withSize: numberOfBytes
	| numberOfBits mask twosComplement |
	numberOfBits := (numberOfBytes*8) -1.
	(anInteger between: (2**numberOfBits) negated and: (2**numberOfBits)-1)
		ifFalse: [
			self error: ('Can not represent {1} on {2} bytes.' format: {anInteger . numberOfBytes}) ].
	anInteger = 0
		ifTrue: [ 
			^ (1 to: numberOfBytes) collect: [ :i | 0 ] as: ByteArray ].
	anInteger > 0
		ifTrue: [ ^ (anInteger asByteArrayOfSize: numberOfBytes) reversed ].
	
	mask := 0.
	0 to: numberOfBytes - 1 do: [ :i |
		mask := (mask << 8) bitOr: 16rFF ].
	twosComplement := ((anInteger bitXor: mask) + 1) abs.
	^ (1 to: numberOfBytes )
		collect: [ :i | |old|
			old := twosComplement.
			twosComplement := (twosComplement >> 8).
			old bitAnd: 16rFF ]
		as: ByteArray.