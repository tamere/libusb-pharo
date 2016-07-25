tests-testing
testIsArray
	| hidDataMain |
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r00000010]);
							yourself.
	self deny: hidDataMain isArray.
	
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r11111101]);
							yourself.
	self assert: hidDataMain isArray.