tests-testing
testIsWrapped
	| hidDataMain |
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r00001000]);
							yourself.
	self assert: hidDataMain isWrapped.
	
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r11110111]);
							yourself.
	self deny: hidDataMain isWrapped.