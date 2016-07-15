tests-testing
testIsClosed
	| hidDelimiter |
	hidDelimiter := HIDDelimiter new
							item: (HIDShortItem rawData: #[2r10101001 2r1]);
							yourself.
	
	self deny: hidDelimiter isClosed.
	
	hidDelimiter := HIDDelimiter new
							item: (HIDShortItem rawData: #[2r10101001 2r0]);
							yourself.
	
	self assert: hidDelimiter isClosed.