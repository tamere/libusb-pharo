tests-testing
testIsClose
	| hidDelimiter |
	hidDelimiter := HIDDelimiter new
							item: (HIDShortItem rawData: #[2r10101001 2r1]);
							yourself.
	
	self deny: hidDelimiter isClose.
	
	hidDelimiter := HIDDelimiter new
							item: (HIDShortItem rawData: #[2r10101001 2r0]);
							yourself.
	
	self assert: hidDelimiter isClose.