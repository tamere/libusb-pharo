tests-testing
testIsOpen
	| hidDelimiter |
	hidDelimiter := HIDDelimiter new
							item: (HIDShortItem rawData: #[2r10101001 2r1]);
							yourself.
	
	self assert: hidDelimiter isOpen.
	
	hidDelimiter := HIDDelimiter new
							item: (HIDShortItem rawData: #[2r10101001 2r0]);
							yourself.
	
	self deny: hidDelimiter isOpen.