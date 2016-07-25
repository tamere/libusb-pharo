tests-testing
testIsNonLinear
	| hidDataMain |
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r00010000]);
							yourself.
	self assert: hidDataMain isNonLinear.
	
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r11101111]);
							yourself.
	self deny: hidDataMain isNonLinear.