tests-testing
testIsNonLinear
	| hidDataMain |
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r00010000]);
							yourself.
	self assert: hidDataMain isNonLinear.
	
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r11101111]);
							yourself.
	self deny: hidDataMain isNonLinear.