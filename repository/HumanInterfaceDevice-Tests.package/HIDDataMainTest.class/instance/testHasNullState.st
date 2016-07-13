tests-testing
testHasNullState
	| hidDataMain |
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r10111111]);
							yourself.
	self deny: hidDataMain hasNullState.
	
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r01000000]);
							yourself.
	self assert: hidDataMain hasNullState.