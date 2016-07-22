tests-accessing
testExponent
	#(0 1 2 3 4 5 6 7 -8 -7 -6 -5 -4 -3 -2 -1) do: [ :exp |
		| hidUnitExponent |
		hidUnitExponent := HIDUnitExponent new
									exponent: exp;
									yourself.
		self assert: hidUnitExponent exponent equals: exp ]