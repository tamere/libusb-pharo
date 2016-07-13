tests-testing
testHasPreferredState
	| hidDataMain |
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r00100000]);
							yourself.
	self deny: hidDataMain hasPreferredState.
	
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r11011111]);
							yourself.
	self assert: hidDataMain hasPreferredState.