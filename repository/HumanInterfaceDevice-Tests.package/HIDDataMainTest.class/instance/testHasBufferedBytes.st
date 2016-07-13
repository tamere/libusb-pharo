tests-testing
testHasBufferedBytes
	| hidDataMain |
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r00000000 2r00000001]);
							yourself.
	self assert: hidDataMain hasBufferedBytes.
	
	hidDataMain := HIDDataMain new
							item: (HIDShortItem rawData: #[129 2r00000000 2r11111110]);
							yourself.
	self deny: hidDataMain hasBufferedBytes.