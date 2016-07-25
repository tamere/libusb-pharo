tests-testing
testDoesNotHaveNullState
	| hidDataMain |
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r10111111]);
							yourself.
	self assert: hidDataMain doesNotHaveNullState.
	
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r01000000]);
							yourself.
	self deny: hidDataMain doesNotHaveNullState.