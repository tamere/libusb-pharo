tests-testing
testIsData
	| hidDataMain |
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r00000001]);
							yourself.
	self deny: hidDataMain isData.
	
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r11111110]);
							yourself.
	self assert: hidDataMain isData.