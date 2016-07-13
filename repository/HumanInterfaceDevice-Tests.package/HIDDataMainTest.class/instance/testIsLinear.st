tests-testing
testIsLinear
	| hidDataMain |
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r00010000]);
							yourself.
	self deny: hidDataMain isLinear.
	
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r11101111]);
							yourself.
	self assert: hidDataMain isLinear.