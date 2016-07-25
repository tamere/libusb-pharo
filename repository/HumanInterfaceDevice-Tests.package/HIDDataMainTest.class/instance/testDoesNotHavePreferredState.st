tests-testing
testDoesNotHavePreferredState
	| hidDataMain |
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r00100000]);
							yourself.
	self assert: hidDataMain doesNotHavePreferredState.
	
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r11011111]);
							yourself.
	self deny: hidDataMain doesNotHavePreferredState.