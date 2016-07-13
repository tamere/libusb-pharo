tests-testing
testIsVariable
	| hidDataMain |
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r00000010]);
							yourself.
	self assert: hidDataMain isVariable.
	
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r11111101]);
							yourself.
	self deny: hidDataMain isVariable.