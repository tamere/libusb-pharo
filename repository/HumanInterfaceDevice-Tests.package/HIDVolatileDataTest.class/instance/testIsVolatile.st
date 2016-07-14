tests-testing
testIsVolatile
	| hidVolatileData |
	hidVolatileData := HIDVolatileData new
							item: (HIDShortItem rawData: #[129 2r01111111]);
							yourself.
	self deny: hidVolatileData isVolatile.
	
	hidVolatileData := HIDVolatileData new
							item: (HIDShortItem rawData: #[129 2r10000000]);
							yourself.
	self assert: hidVolatileData isVolatile.