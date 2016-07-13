tests-testing
testIsAbsolute
	| hidDataMain |
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r00000100]);
							yourself.
	self deny: hidDataMain isAbsolute.
	
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r11111011]);
							yourself.
	self assert: hidDataMain isAbsolute.