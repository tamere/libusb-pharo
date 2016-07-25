tests-testing
testIsNotWrapped
	| hidDataMain |
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r00001000]);
							yourself.
	self deny: hidDataMain isNotWrapped.
	
	hidDataMain := HIDDataMain basicNew
							item: (HIDShortItem rawData: #[129 2r11110111]);
							yourself.
	self assert: hidDataMain isNotWrapped.