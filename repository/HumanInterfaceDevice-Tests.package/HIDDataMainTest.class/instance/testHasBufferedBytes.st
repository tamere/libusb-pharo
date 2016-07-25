tests-testing
testHasBufferedBytes
	| hidDataMain |
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r00000000 2r00000001]);
							yourself.
	self assert: hidDataMain hasBufferedBytes.
	
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r00000000 2r11111110]);
							yourself.
	self deny: hidDataMain hasBufferedBytes.