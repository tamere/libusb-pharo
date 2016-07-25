tests-testing
testHasBitField
	| hidDataMain |
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r00000000 2r00000001]);
							yourself.
	self deny: hidDataMain hasBitField.
	
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r00000000 2r11111110]);
							yourself.
	self assert: hidDataMain hasBitField.