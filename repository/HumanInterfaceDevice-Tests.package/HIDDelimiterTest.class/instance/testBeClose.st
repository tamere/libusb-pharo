tests-setting
testBeClose
	| hidDelimiter |
	hidDelimiter := HIDDelimiter new.
	hidDelimiter beClose.
	
	self assert: hidDelimiter isClose.