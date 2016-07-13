tests-testing
testIsArray
	| hidDataMain |
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r00000010]);
							yourself.
	self deny: hidDataMain isArray.
	
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r11111101]);
							yourself.
	self assert: hidDataMain isArray.