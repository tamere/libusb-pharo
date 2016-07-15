tests-accessing
testExponent
	(16r0 to: 16rF) with: #(0 1 2 3 4 5 6 7 -8 -7 -6 -5 -4 -3 -2 -1) do: [ :data :expected |
		| hidUnitExponent |
		hidUnitExponent := HIDUnitExponent new
									item: (HIDShortItem rawData: #[2r01010101] , data asLittleEndianByteArray);
									yourself.
		self assert: hidUnitExponent exponent equals: expected ]