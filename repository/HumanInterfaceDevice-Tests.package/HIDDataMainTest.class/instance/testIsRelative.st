tests-testing
testIsRelative
	| hidDataMain |
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r00000100]);
							yourself.
	self assert: hidDataMain isRelative.
	
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r11111011]);
							yourself.
	self deny: hidDataMain isRelative.