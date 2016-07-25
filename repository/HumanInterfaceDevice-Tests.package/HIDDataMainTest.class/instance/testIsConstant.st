tests-testing
testIsConstant
	| hidDataMain |
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r00000001]);
							yourself.
	self assert: hidDataMain isConstant.
	
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r11111110]);
							yourself.
	self deny: hidDataMain isConstant.