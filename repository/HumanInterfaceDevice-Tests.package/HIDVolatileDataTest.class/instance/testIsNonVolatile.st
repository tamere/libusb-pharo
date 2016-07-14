tests-testing
testIsNonVolatile
	| hidVolatileData |
	hidVolatileData := HIDVolatileData new
							item: (HIDShortItem rawData: #[129 2r01111111]);
							yourself.
	self assert: hidVolatileData isNonVolatile.
	
	hidVolatileData := HIDVolatileData new
							item: (HIDShortItem rawData: #[129 2r10000000]);
							yourself.
	self deny: hidVolatileData isNonVolatile.